<?php

namespace App\Http\Controllers;

use App\todo;
use Illuminate\Http\Request;

class TodosController extends Controller
{
    public function index()
    {
    	return todo::all();
    }
}
