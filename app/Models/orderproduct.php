<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Order;

class orderproduct extends Model
{
    //use HasFactory;
    protected $fillable = ['order_id', 'product_id', 'quantity'];

    /* public function Orders()
    {
        return $this->belongsTo(Order::class);
    }
    public function products()
    {
        return $this->hasMany(Product::class);
    } */
}
