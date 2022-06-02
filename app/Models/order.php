<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    use HasFactory;
    protected $fillable = ['user_id', 'address', 'city', 'state', 'zipcode','product_id', 'name', 'price', 'units', 'size'];

    public function Products() {
        return $this->belongsToMany(Product::class)->withPivot('name','price','units', 'size');
    }

}
