<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    
    protected $fillable = ['cpf', 'name', 'email', 'phone', 'city'];

}
