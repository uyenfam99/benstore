<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DataStoreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $storeId = empty(session('lastStoreId')) ? 1 : session('lastStoreId');
        $pathStoreFull = base_path('vendor/s-cart/core/src/DB/store.sql');
        $search = [
            '__SC_DB_PREFIX__',
            '__storeId__',
        ];
        $replace = [
            SC_DB_PREFIX,
            $storeId,
        ];
        $content = str_replace(
            $search,
            $replace,
            file_get_contents($pathStoreFull)
        );
        DB::connection(SC_CONNECTION)->unprepared($content);
    }
}
