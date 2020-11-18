## Usersテーブル

| Column             | Type        | Options      |
| ------------------ | ----------- | ------------ |
| nickname           | string      | null: false  |
| email              | string      | null: false  |
| encrypted_password | string      | null: false  | 
| sex_id             | integer     | null: false  |

### Association

- has_many :coordinations
- has_many :comments


## Coordinationsテーブル

| Column             | Type        | Options           |
| ------------------ | ----------- | ------------------|
| name               | string      | null: false       |
| description        | text        | null: false       |
| recommended_point  | string      | null: false       | 
| user               | references  | foreign_key:true  |


### Association

- belongs_to :user
- has_many   :comments

## comments テーブル

| Column       | Type        | Options                       |
| ------------ | ----------- | ----------------------------- |
| text         | text        | null: false                   |
| user         | references  | foreign_key: true             |
| coordination  | references  | foreign_key: true             |

### Association

- belongs_to :user
- belongs_to :coordination