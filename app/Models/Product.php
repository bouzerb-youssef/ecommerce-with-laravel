<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Catego;
class Product extends Model
{
    use HasFactory;
    protected $fillable = ['quantity'];

    public function categos()
    {
        return $this->belongsTo(Catego::class,"catgo_id");
    }

}
