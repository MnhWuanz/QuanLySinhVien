<?php

return [
    'defaults' => [
        'guard' => env('AUTH_GUARD', 'web'),
        'passwords' => env('AUTH_PASSWORD_BROKER', 'lecturers'),
    ],

    'guards' => [
        'web' => [
            'driver' => 'session',
            'provider' => 'lecturers',
        ],
    ],

    'providers' => [
        'lecturers' => [
            'driver' => 'eloquent',
            'model' => env('AUTH_MODEL', App\Models\Lecturer::class),
        ],
    ],

    'passwords' => [
        'lecturers' => [
            'provider' => 'lecturers',
            'table' => env('AUTH_PASSWORD_RESET_TOKEN_TABLE', 'password_reset_tokens'),
            'expire' => 60,
            'throttle' => 60,
        ],
    ],

    'password_timeout' => env('AUTH_PASSWORD_TIMEOUT', 10800),
];
