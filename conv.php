<?php

require 'vendor/autoload.php'; // Ensure Composer autoload is included

use Ranium\Fixerio\Client;

$accessKey = '1db2207a5f3931ef1fbd89e7feabfc84';
$secure = false; // false for free Fixer.io plan
$config = []; // Optional Guzzle config

$fixerio = Client::create($accessKey, $secure, $config);

$latestRates = $fixerio->latest([
    'base' => 'EUR',
    'symbols' => 'TRY', // use uppercase
]);

if (isset($latestRates['rates']['TRY'])) {
    echo "Exchange rate (EUR to TRY): " . $latestRates['rates']['TRY'];
} else {
    echo "TRY rate not available or API call failed.";
}
?>
