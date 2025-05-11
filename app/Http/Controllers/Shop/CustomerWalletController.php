<?php

namespace App\Http\Controllers\Shop;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Webkul\Customer\Repositories\CustomerRepository;

class CustomerWalletController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        protected CustomerRepository $customerRepository
    ) {}

    /**
     * Display wallet balance and transaction history
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $customer = auth()->guard('customer')->user();
        
        return view('shop::customers.account.wallet.index', compact('customer'));
    }

    /**
     * Add funds to wallet
     */
    public function addFunds(Request $request)
    {
        $request->validate([
            'amount' => 'required|numeric|min:1'
        ]);

        $customer = auth()->guard('customer')->user();
        
        // In a real scenario, you would process payment here
        // For now, we'll just directly add to the balance for demonstration

        DB::transaction(function() use ($customer, $request) {
            $customer->wallet_balance = $customer->wallet_balance + $request->amount;
            $customer->save();
            
            // Could log transaction here in a real app
        });

        session()->flash('success', 'Bakiyenize ' . core()->formatPrice($request->amount) . ' eklendi.');
        
        return redirect()->route('shop.customers.account.wallet.index');
    }

    /**
     * Add balance to customer wallet
     */
    public static function addToWallet($customerId, $amount, $reason = null)
    {
        try {
            DB::transaction(function() use ($customerId, $amount) {
                $customer = app(CustomerRepository::class)->find($customerId);
                
                if (!$customer) {
                    throw new \Exception('Müşteri bulunamadı.');
                }
                
                $customer->wallet_balance = $customer->wallet_balance + $amount;
                $customer->save();
                
                // Could log transaction here in a real app
            });
            
            return true;
        } catch (\Exception $e) {
            report($e);
            return false;
        }
    }
}
