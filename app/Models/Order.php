<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Orderproduct;

class Order extends Model
{
    use HasFactory;
   // protected $table = 'orders';

    protected $fillable = [
         'name', 'country', 'address',
        'City', 'Phone', 'Email',  
    ];

  /*   public function user()
    {
        return $this->belongsTo(User::class);
    } */

  
}
