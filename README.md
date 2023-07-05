# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| profile            | text   | null: false               |
| prefecture         | text   | null: false               |
| history            | text   | null: false               |

### Association
- has_many :mountains
- has_many :comments




## mountains テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| mountain_name      | string     | null: false                    |
| level              | text       | null: false                    |
| point              | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments




## comments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     | text       | null: false                    |
| mountain    | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :mountain