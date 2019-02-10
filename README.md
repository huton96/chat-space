# README

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null : false, add_index|
|email|string|null : false, unique: true|

### Association
- has_many :groups, through: :members
- has_many :members
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null false|

### Association
- has_many :users, through: :members
- has_many :members
- has_many :massages


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null false|
|image|string||
|group_id|references|null false, foreign_key: true|
|user_id|references|null false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
