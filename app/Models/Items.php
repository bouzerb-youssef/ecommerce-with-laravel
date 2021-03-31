<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Items extends Model
{
    protected $table="Items";
    use HasFactory;
    protected $fillable = ['order_id', 'product_id', 'quantity'];
}
