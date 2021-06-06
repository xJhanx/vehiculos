<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserSaveRequest;
use App\Http\Requests\UserUpdateRequest;
use App\User;
// use App\Http\Requests\UserSaveRequest;
// use App\Http\Requests\UserUpdateRequest;
use Illuminate\Http\Request;

class UserController extends Controller
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
        $users  =       User::toBase()->get();
        return view('users.index', compact("users"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserSaveRequest $request)
    {

        if (request()->expectsJson()) {
            try {

                User::create(request()->all());
                return response()->json('User registrado correctamente', 200);
            } catch (\Throwable $th) {
                return response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\User  $users
     * @return \Illuminate\Http\Response
     */
    public function edit($key)
    {
        if (request()->expectsJson()) {
            $user = User::findOrfail($key);
            return response($user, 200);
        }
        return abort(404);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\User  $users
     * @return \Illuminate\Http\Response
     */

    public function show(User $users)
    {
        return view('admin.users.show', compact('users'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request)
    {
        if (request()->expectsJson()) {
            try {
                $users = User::findOrFail($request->id);
                $users->update(request()->all());
                return response()->json('User actualizado correctamente', 200);
            } catch (\Throwable $th) {
                return  response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\User  $users
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (request()->expectsJson()) {
            try {
                $users = User::findOrFail($id);
                $users->delete();
                return response()->json('User eliminado correctamente.', 200);
            } catch (\Throwable $th) {
                return response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }
}
