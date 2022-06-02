<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;
    protected $fillable = ['user_id', 'product_id','size_id', 'units'];

    public function product() {
        return $this->belongsTo(Product::Class);
    }

    public function Size() {
        return $this->belongsTo(Size::class);
    }
}

