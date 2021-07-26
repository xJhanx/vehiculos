<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ListenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function type_liabilities()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_liabilities', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_liabilities",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function type_document_identifications()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_document_identifications', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_document_identifications",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function type_organizations()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_organizations', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_organizations",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function municipalities()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('municipalities', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=municipalities",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function languages()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('languages', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=languages",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function type_environments()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_environments', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_environments",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function type_operations()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_operations', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_operations",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function type_currencies()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_currencies', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_currencies",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function tax_details()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('tax_details', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=tax_details",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function type_regimes()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('type_regimes', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=type_regimes",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    public function countries()
    {
        try {
            cache()->flush();
            $data =  Cache::rememberForever('countries', function () {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://silpos.apifacturacionelectronica.xyz/api/ubl2.1/listings?tables=countries",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "GET",
                    CURLOPT_POSTFIELDS => "{\"documentTypeCodeCompany\":\"31\",\"documentNumberCompany\":\"13568268\",\"user\":\"jesusalainm@gmail.com\",\"password\":\"Silpos13703322*\"}",
                    CURLOPT_HTTPHEADER => array(
                        "Accept: application/json",
                        "Content-Type: application/json"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
                return $response;
            });

            return json_encode($data);
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
}
