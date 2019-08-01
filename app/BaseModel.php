<?php

namespace App;

use Auth;
use Illuminate\Database\Eloquent\Model;
use DB;
use App\Scopes\PermissionScope;

class BaseModel extends Model {
	public static function boot() {
		parent::boot();
		static::addGlobalScope(new PermissionScope);
		// create a event to happen on updating
		static::updating(function ($table) {
			$table->updated_by = Auth::user()->id;
		});

		// create a event to happen on deleting
		// static::deleting(function ($table) {
		// 	$table->deleted_by = Auth::user()->id;
		// });

		// create a event to happen on saving
		static::saving(function ($table) {
			$user_id=Auth::user()->id;
			$permision=DB::select("call permited_user_procedure('$user_id')");
			//$permision=DB::select('exec permited_user_procedure(?,?)',array($user_id,$user_id));
            foreach ($permision as $permision => $permisions) {
                $permisionee[]=$permisions->user_id;
            }
       		$permited_user=implode(',', $permisionee);
       		$table->permited_user = $permited_user;
			$table->created_by = Auth::user()->id;
		});
		static::creating(function ($table) {
			$user_id=Auth::user()->id;
			$permision=DB::select("call permited_user_procedure('$user_id')");
            foreach ($permision as $permision => $permisions) {
                $permisionee[]=$permisions->user_id;
            }
       		$permited_user=implode(',', $permisionee);
       		$table->permited_user = $permited_user;
			$table->created_by = Auth::user()->id;
		});
	}
}
