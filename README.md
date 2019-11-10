# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null:false|
|password|string|null:false|

### Association
- has_many :crads
- has_many :contents


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null:false|
|comment|string|null:false|
|datetime|datetime|null:false|
|user|references|null:false,foreigner_key:true|
|content|references|null:false,foreigner_key:true|

### Association
- belongs_to :users
- belongs_to :contents


## contentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null:false|

### Association
- has_many :crads
- belongs_to :users