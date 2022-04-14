<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    use softDeletes;
    protected $fillable = ['name','description','price','category_id','image'];

    public function Category(){
        return $this->belongsTo(Category::class);
    }

    public function Tags(){
        return $this->belongsToMany(Tag::class);
    }

    public function hasTag($tag_id){
        return in_array($tag_id, $this->Tags->pluck('id')->toArray());
    }

    public function Sizes() {
        return $this->hasMany(Size::class);
    }
}
