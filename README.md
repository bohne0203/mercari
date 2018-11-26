# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true|
|image|string|null: true|

### Association
-has_one :users_details
-has_many :items
-has_many :comments
-has_many :likes

## users_detailsテーブル
|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,unique: true|
|first_name|string|null: false,|
|family_name|string|null: false,|
|kana_first|string|null: false,|
|kana_family|string|null: false,|
|postal_code|INTEGER(7)|null: false,|
|preficture|string|null: false,|
|city|string|null: false,|
|addless|string|null: false,|
|building_name|string|
|phone_num|INTEGER|null: false,|
|profile|text|

### Association
belongs_to :user, optional: true, dependent: :destroy, foreign_key: "user_id"


## itemsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index|
|price|integer|null: false|
|detail|text|null: false|
|condition|string|null: false|<!-- もしかしたらテーブル作る ？？-->

### Association
belongs_to user,
-has_many :brands
-has_many :large_caregories
-has_many :medium_categories
-has_many :small_categories

## brandsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|

### Association
-belongs_to :item

## large_caregoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index

### Association
-belongs_to :item

## medium_categoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,,add_index

### Association
-belongs_to :item

## small_categoriesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index

### Association

## likesテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index,unique: true|

### Association
-belongs_to :user
-belongs_to :item

<!-- ## conditionsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index,unique: true|

### Association
 -->

## evaluationsテーブル
|column|Type|Options|
|------|----|-------|
|evaluation|string|null: false|
|comment|textt|


### Association
<!-- 後回し -->


## commentsテーブル
|column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|intenger|null: false,foreign_key: true|
|itenm_id|intenger|null: false,foreign_key: true|

### Association
-belong_to :user
-belong_to :item

## sizesテーブル

|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## Shipping_methodsテーブル
|column|Type|Options|
|------|----|-------|
|Burden_fee|integer|null: false|
|Shipping_methods|string|null: false|
|days_to_arrival|string|null: false|
|body|text|null: false|
|im|string|------|
|group_id|integer|null: false|
|user_id|integer|null: false|
|preficture|string|null: false|

