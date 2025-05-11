<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Options
    |--------------------------------------------------------------------------
    |
    | Configure the cache time-to-live (TTL) in seconds.
    |
    */

    'options' => [
        'cache_ttl' => 3600, // Cache duration in seconds (1 hour)
    ],

    /*
    |--------------------------------------------------------------------------
    | Services
    |--------------------------------------------------------------------------
    |
    | Define the exchange rate services to be used. Here, we're configuring
    | Fixer.io with the access key retrieved from the .env file.
    |
    */

    'services' => [
        'fixer' => [
            'access_key' => env('FIXER_API_KEY'),
            'enterprise' => false, // Set to true if using a paid plan
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Cache Store
    |--------------------------------------------------------------------------
    |
    | Specify the Laravel cache store to use. Set to null to use the default.
    |
    */

    'cache' => null,

    /*
    |--------------------------------------------------------------------------
    | HTTP Client
    |--------------------------------------------------------------------------
    |
    | Define the HTTP client service name to use. Set to null to use the default.
    |
    */

    'http_client' => null,

    /*
    |--------------------------------------------------------------------------
    | Request Factory
    |--------------------------------------------------------------------------
    |
    | Define the Request Factory service name to use. Set to null to use the default.
    |
    */

    'request_factory' => null,
];
