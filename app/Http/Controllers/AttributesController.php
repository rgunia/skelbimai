<?php

namespace App\Http\Controllers;

use App\atribute;
use App\atribute_set;
use App\atribute_set_realations;
use App\atribute_type;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AttributesController extends Controller
{
    public function setIndex(){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {

            $data['attribute_sets']= atribute_set::all();
            return view('attribute.sets', $data);
        }else{
            return 'no permission';
        }
    }
    public function index(){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {

            $data['attributes']= atribute::all();
            return view('attribute.all', $data);
        }else{
            return 'no permission';
        }
    }


    public function attributeSetCreate(){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $data['attributes'] = atribute::all();
            return view('attribute.setCreate', $data);
        }else{
            return 'no permission';
        }
    }
    public function attributeSetStore(Request $request){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $atributeSet= new atribute_set();
            $atributeSet->name = $request->set;
            $atributeSet->save();
            $atributeSetNew = atribute_set::where('name', $request->set)->first();
            $attributeArray =  $request->input('attributes');
            $atributeSetRealations = new atribute_set_realations();
            foreach ($attributeArray as $attributeId){
                $atributeSetRealations->attribute_id = $attributeId;
                $atributeSetRealations->attribute_set_id = $atributeSetNew->id;
                $atributeSetRealations->save();
            }
        }else{
            return 'no permission';
        }
    }

    public function attributeSetEdit($id){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $Set = atribute_set::where('id', $id)->first();
            $data['attributes'] = atribute::all();

            $data['attributeSet'] = atribute_set::where('id', $id)->first();
            $data['oldAttributes'] = atribute_set_realations::where('attribute_set_id', $Set->id)->get();
            return view('attribute.setEdit', $data);
        }else{
            return 'no permission';
        }
    }
    public function attributeSetUpdate(Request $request, $id){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $atributeSet= atribute_set::where('id', $id)->first();
            $atributeSet->name = $request->set;
            $atributeSet->save();

            atribute_set_realations::where('attribute_set_id', $id)->delete();

            $attributeArray =  $request->input('attributes');
            $atributeSetRealations = new atribute_set_realations();
            foreach ($attributeArray as $attributeId){
                $atributeSetRealations->attribute_id = $attributeId;
                $atributeSetRealations->attribute_set_id = $id;
                $atributeSetRealations->save();
            }
        }else{
            return 'no permission';
        }
    }
    public function attributeSetDelete($id){
        atribute_set::where('id', $id)->delete();
        atribute_set_realations::where('attribute_set_id', $id)->delete();
        return redirect()->route('attributeset.index');
    }



    public function attributeCreate(){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $data['types'] = atribute_type::all();
            return view('attribute.create', $data);
        }else{
            return 'no permission';
        }
    }
    public function attributeStore(Request $request){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $attribute = new atribute();
            $attribute->name = $request->attribute;
            $attribute->type_id = $request->type;
            $attribute->lable = $request->lable;
            $attribute->save();
        }else{
            return 'no permission';
        }
    }
    public function attributeEdit($id){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $data['oldAttribute'] = atribute::where('id', $id)->first();
            $data['types'] = atribute_type::all();
            return view('attribute.edit', $data);
        }else{
            return 'no permission';
        }
    }
    public function attributeUpdate(Request $request, $id){
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {
            $attribute = atribute::where('id', $id)->first();
            $attribute->name = $request->attribute;
            $attribute->type_id = $request->type;
            $attribute->lable = $request->lable;
            $attribute->save();
            return redirect()->route('attribute.edit', $id);
        }else{
            return 'no permission';
        }
    }

    public function attributeDelete($id){
        atribute::where('id', $id)->delete();
        return redirect()->route('attribute.index');
    }
}
