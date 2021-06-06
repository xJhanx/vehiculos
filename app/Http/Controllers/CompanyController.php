<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Company;
use App\Http\Requests\CompanySaveRequest;
use App\Http\Requests\CompanyUpdateRequest;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies  =       Company::with('cliente')->toBase()->get();
        $clientes  =       Cliente::toBase()->get();
        return view('company.index', compact('companies', 'clientes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CompanySaveRequest $request)
    {

        if (request()->expectsJson()) {
            try {

                Company::create(request()->all());
                return response()->json('Company registrado correctamente', 200);
            } catch (\Throwable $th) {
                return response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        if (request()->expectsJson()) {
            return response($company, 200);
        }
        return abort(404);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Company  $company
     * @return \Illuminate\Http\Response
     */

    public function show(Company $company)
    {
        return view('admin.clientes.show', compact('cliente'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(CompanyUpdateRequest $request)
    {
        if (request()->expectsJson()) {
            try {
                $company = Company::findOrFail($request->id);
                $company->update(request()->all());
                return response()->json('Company actualizado correctamente', 200);
            } catch (\Throwable $th) {
                return  response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (request()->expectsJson()) {
            try {
                $company = Company::findOrFail($id);
                $company->delete();
                return response()->json('Company eliminado correctamente.', 200);
            } catch (\Throwable $th) {
                return response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }
}
