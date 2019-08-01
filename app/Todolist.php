<?php

namespace App;

class Todolist extends BaseModel
{
    protected $table='todolists';
    protected $fillable=['name','details','permited_user'];
}
