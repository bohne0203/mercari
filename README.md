## usersテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true|
|image|string|null: true|

### Association
- has_one :users_details, dependent: :destroy
- has_many :items, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :credit_card, dependent: :destroy
- has_many :evaluations dependent: :destroy

## users_detailsテーブル
|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,unique: true|
|first_name|string|null: false,|
|family_name|string|null: false,|
|kana_first|string|null: false,|
|kana_family|string|null: false,|
|postal_code|INTEGER(7)|null: false,|
|prefecture|string|null: false,|
|city|string|null: false,|
|addless|string|null: false,|
|building_name|string|
|phone_num|INTEGER|null: false,|
|profile|text|

### Association
- belongs_to :user, optional: true, dependent: :destroy, foreign_key: "user_id"


## itemsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index|
|price|integer|null: false|
|detail|text|null: false|
|condition|string|null: false|

### Association
- belongs_to :user
- belongs_to :large_caregory
- belongs_to :medium_category
- belongs_to :small_category
- has_many :brands
- has_one :shipping_method
- has_many :clothes_sizes
- has_many :shoes_sizes
- has_many :tv_sizes
- has_many :tire_sizes
- has_many :bike_sizes
- has_many :likes

## brandsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|-------|

### Association
- belongs_to :item
- has_many :large_caregories, through: :brands_categories
- has_many :medium_caregories, through: :brands_categories
- has_many :small_caregories, through: :brands_categories

## large_caregoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|

### Association
- has_many :items
- has_many :brands, through: :brands_categories

## medium_categoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|

### Association
- has_many :items
- has_many :brands, through: :brands_categories

## small_categoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index|

### Association
- has_many :items
- has_many :brands, through: :brands_categories

## brands_categoriesテーブル
|column|Type|Options|
|------|----|-------|
|brand_id|integer|null: false, foreign_key: true|
|large_category_id|integer|null: false, foreign_key: true|
|medium_category_id|integer|null: false, foreign_key: true|
|small_category_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :brand
- belongs_to :large_category
- belongs_to :medium_category
- belongs_to :small_category


## likesテーブル
|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|item_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :item

## evaluationsテーブル
|column|Type|Options|
|------|----|-------|
|evaluation|string|null: false|
|comment|text|null: false|

### Association
- belongs_to user

## commentsテーブル
|column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|intenger|null: false,foreign_key: true|
|item_id|intenger|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## clothes_sizesテーブル
|column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- belongs_to :item

## shoes_sizesテーブル
|column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- belongs_to :item

## tv_sizesテーブル
|column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- belongs_to :item

## tire_sizesテーブル
|column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- belongs_to :item

## bike_sizesテーブル
|column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- belongs_to :item

## shipping_methodsテーブル
|column|Type|Options|
|------|----|-------|
|burden_fee|integer|null: false|
|shipping_methods|string|null: false|
|days_to_arrival|string|null: false|
|item_id|integer|null: false,foreign_key: true|
|prefecture|string|null: false|

### Association
- belongs_to :item

## credit_cardテーブル
|column|Type|Options|
|------|----|-------|
|credit_number|integer|null: false|
|security_cord|integer|null: false|
|year|integer|null: false|
|month|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
