<?php

namespace Webkul\Core\Console\Commands;

use Illuminate\Console\Command;
use Ranium\Fixerio\Client;
use Webkul\Core\Repositories\CurrencyRepository;
use Webkul\Core\Repositories\ExchangeRateRepository;

class ExchangeRateUpdate extends Command
{
    protected $signature = 'exchange-rate:update';

    protected $description = 'Updates TRY to USD and TRY to EUR exchange rates using Fixer.io (free plan, base = EUR)';

    protected $currencyRepository;

    protected $exchangeRateRepository;

    public function __construct(
        CurrencyRepository $currencyRepository,
        ExchangeRateRepository $exchangeRateRepository
    ) {
        parent::__construct();

        $this->currencyRepository = $currencyRepository;
        $this->exchangeRateRepository = $exchangeRateRepository;
    }

    public function handle()
    {
        $accessKey = '1db2207a5f3931ef1fbd89e7feabfc84';
        $secure = false;

        $fixerio = Client::create($accessKey, $secure);

        $baseCurrency = 'EUR';

        $currencies = $this->currencyRepository->all()->pluck('code')->toArray();
        $required = ['TRY', 'USD'];

        $symbols = implode(',', array_intersect($currencies, $required));
        $this->info("Fetching EUR to: $symbols");

        try {
            $response = $fixerio->latest([
                'base' => $baseCurrency,
                'symbols' => $symbols,
            ]);

            if (!isset($response['rates']) || !is_array($response['rates'])) {
                $this->error("Invalid response from Fixer.io API.");
                return;
            }

            $eurToTry = $response['rates']['TRY'] ?? null;
            $eurToUsd = $response['rates']['USD'] ?? null;

            if (!$eurToTry || !$eurToUsd) {
                $this->error("Missing EUR➝TRY or EUR➝USD rate.");
                return;
            }

            $tryToUsd = $eurToUsd / $eurToTry;
            $tryToEur = 1 / $eurToTry;

            $this->info("TRY ➝ USD = {$tryToUsd}");
            $this->info("TRY ➝ EUR = {$tryToEur}");

            $this->updateExchangeRate('USD', $tryToUsd);
            $this->updateExchangeRate('EUR', $tryToEur);

            $this->info("✅ Exchange rates updated.");

        } catch (\Exception $e) {
            $this->error("❌ Error: " . $e->getMessage());
        }
    }

    protected function updateExchangeRate($currencyCode, $rate)
    {
        $currency = $this->currencyRepository->findOneByField('code', $currencyCode);

        if (!$currency) {
            $this->error("$currencyCode currency not found.");
            return;
        }

        $exchangeRate = $this->exchangeRateRepository->findOneWhere([
            'target_currency' => $currency->id,
        ]);

        if (!$exchangeRate) {
            $this->exchangeRateRepository->create([
                'target_currency' => $currency->id,
                'rate' => $rate,
            ]);

            $this->info("Created TRY ➝ $currencyCode exchange rate: $rate");
        } else {
            $this->exchangeRateRepository->update([
                'rate' => $rate,
            ], $exchangeRate->id);

            $this->info("Updated TRY ➝ $currencyCode exchange rate: $rate");
        }
    }
}
