<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Todolist;

class TodolistController extends Controller
{
    public function index(){
    	$todo_list=Todolist::get();
    	return view('todo.index',compact('todo_list'));
    }

    public function store(Request $request){
    	$data = request()->except(['_token']);
    	Todolist::create($data);
    	return back();
    }

}
