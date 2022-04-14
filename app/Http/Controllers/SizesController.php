<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Size;
use App\Models\Product;
class SizesController extends Controller
{
    public function index(){
        return view('size.index')->with('sizes',Size::all());
    }

    public function create(){
        return view('size.create');
    }

    public function store(Request $request){
        Size::create($request->all());
        session()->flash('success','Tamanho criado com Sucesso!');
        return redirect(route('size.index'));
    }

    public function destroy(Size $size){
        $size->delete();
        session()->flash('success','Tamanho apagado com Sucesso!');
        return redirect(route('size.index'));
    }

    public function edit(Size $size){
        return view('size.edit')->with('size', $size);
    }

    public function update(Size $size, Request $request){
        $size->update($request->all());
        session()->flash('success','Tamanho editado com Sucesso!');
        return redirect(route('size.index'));
    }

    public function trash(){
        return view('size.trash')->with('sizes',Size::onlyTrashed()->get());
    }

    public function restore($size_id){
        $size = Size::onlyTrashed()->where('id', $size_id)->first();
        $size->restore();
        session()->flash('success','Tamanho restaurado com Sucesso!');
        return redirect(route('category.index'));
    }

}
