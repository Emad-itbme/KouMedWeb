<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Webkul\Customer\Repositories\CustomerRepository;
use Webkul\Attribute\Repositories\AttributeRepository;
use Webkul\Product\Repositories\ProductRepository;
use Webkul\Core\Repositories\ChannelRepository;
use Webkul\Category\Repositories\CategoryRepository;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class SeedProjectData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'project:seed';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Seed project with required data for the project assignment';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct(
        protected CustomerRepository $customerRepository,
        protected AttributeRepository $attributeRepository,
        protected ProductRepository $productRepository,
        protected ChannelRepository $channelRepository,
        protected CategoryRepository $categoryRepository
    ) {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $this->info('Seeding project data...');

        // Create 5 customers
        $this->createCustomers();

        // Create 20 products
        $this->createProducts();

        $this->info('Project data seeded successfully!');

        return Command::SUCCESS;
    }

    /**
     * Create test customers
     */
    private function createCustomers()
    {
        $this->info('Creating customers...');
        
        $faker = Faker::create('tr_TR');
        
        // Create 5 test customers
        for ($i = 1; $i <= 5; $i++) {
            $email = "user{$i}@Koume.com";
            
            // Check if customer already exists
            $existingCustomer = $this->customerRepository->findOneByField('email', $email);
            
            if (!$existingCustomer) {
                $this->customerRepository->create([
                    'first_name' => $faker->firstName,
                    'last_name' => $faker->lastName,
                    'email' => $email,
                    'password' => Hash::make('password'),
                    'status' => 1,
                    'wallet_balance' => $faker->randomFloat(2, 0, 500),
                    'customer_group_id' => 1,
                ]);
                
                $this->info("Created customer: {$email}");
            } else {
                $this->info("Customer {$email} already exists");
            }
        }
    }

    /**
     * Create test products
     */
    private function createProducts()
    {
        $this->info('Creating products...');
        
        $faker = Faker::create('tr_TR');
        
        // Get the default channel
        $channel = $this->channelRepository->findOneByField('code', 'default');
        
        // Get the default category
        $category = $this->categoryRepository->findOneByField('slug', 'root');
        
        // Create 20 test products
        $categories = ['Elektronik', 'Giyim', 'Ev Eşyaları', 'Kitaplar', 'Spor'];
        $productNames = [
            'Elektronik' => ['Akıllı Telefon', 'Tablet', 'Dizüstü Bilgisayar', 'Kulaklık'],
            'Giyim' => ['T-Shirt', 'Pantolon', 'Gömlek', 'Ayakkabı'],
            'Ev Eşyaları' => ['Masa Lambası', 'Perde', 'Sandalye', 'Yatak'],
            'Kitaplar' => ['Roman', 'Bilim Kurgu', 'Tarih', 'Bilim'],
            'Spor' => ['Koşu Ayakkabısı', 'Spor Çantası', 'Fitness Aleti', 'Yoga Matı']
        ];
        
        for ($i = 1; $i <= 20; $i++) {
            $categoryIndex = $i % 5;
            $categoryName = $categories[$categoryIndex];
            $productIndex = $i % 4;
            $productName = $productNames[$categoryName][$productIndex];
            
            $sku = "PROD-" . $i;
            
            // Check if product already exists
            $existingProduct = $this->productRepository->findOneByField('sku', $sku);
            
            if (!$existingProduct) {
                // Create a simple product
                $product = [
                    'type' => 'simple',
                    'attribute_family_id' => 1,
                    'sku' => $sku,
                    'parent_id' => null,
                    'url_key' => strtolower(str_replace(' ', '-', $productName)) . '-' . $i,
                    'name' => $productName . ' ' . $i,
                    'short_description' => $faker->sentence,
                    'description' => $faker->paragraph,
                    'status' => 1,
                    'visible_individually' => 1,
                    'channel' => 'default',
                    'locale' => 'tr',
                    'categories' => [$category->id],
                    'price' => $faker->randomFloat(2, 50, 5000),
                    'special_price' => $faker->randomElement([null, $faker->randomFloat(2, 30, 1000)]),
                    'weight' => $faker->randomFloat(2, 0.1, 10),
                    'inventories' => [
                        1 => $faker->numberBetween(10, 100)
                    ]
                ];
                
                $this->productRepository->create($product);
                
                $this->info("Created product: {$productName} {$i}");
            } else {
                $this->info("Product {$sku} already exists");
            }
        }
    }
}
