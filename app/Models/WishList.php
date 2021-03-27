<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Product;
class WishList extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id','user_id'
];
    public function client()
    {
        return $this->belongsTo(User::class);
    }
    public function Products()
    {
        return $this->hasMany(Product::class);
    }
}
