<?php

namespace App\Http\Controllers\Tiket;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Tiket\Tiket;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Resources\TiketResource;

class TiketController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return TiketResource::collection(Tiket::latest()->get());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Tiket::create($request->all());

        return response('Created', Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Tiket $tiket)
    {
        return new TiketResource($tiket);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int                      $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tiket $tiket)
    {
        $tiket->update($request->all());

        return response('Updated', Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tiket $tiket)
    {
        $tiket->delete();

        return response('Deleted', Response::HTTP_NO_CONTENT);
    }
}
