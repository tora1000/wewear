### アプリケーション名
wewear
### アプリケーション概要
自分のファッションコーディネートを投稿することが出来て、当日、1週間のコーディネートを決めてくれる。
他のユーザーが投稿したコーディネートを見ることが出来る。
### URL
https://wewear-1000.herokuapp.com/

### テスト用アカウント
ニックネーム:wewear
email wewear@wewear
password wewear1000
性別:男性
### 利用方法

初めにユーザー登録を行い、新規投稿ページでコーディネートの情報を入力すると投稿したコーディネートを確認することが出来る。今日のコーディネート、1週間コーディネートページに遷移すると、投稿したコーディネートからランダムにコーディネートを選んでくれる。

### 目指した課題解決

毎日コーディネートを考えるのが大変だと思ったので、予めコーディネートを保存しておいて、コーディネートを考える時間と気力の解消を目指した。また気に入ったコーディネートを忘れてしまわないよう保存しておいたり、他のユーザーのコーディネートを参考にすることが出来るためコーディネートの幅が広がると考えた。

### 洗い出した要件

#### 機能

今日のコーディネート
1週間コーディネート
コーディネート投稿
ユーザー管理機能
トップページに投稿したコーディネートを表示


#### 目的

コーディネートを決める決断疲れを減らす
コーディネートを記録として残す
個人で投稿を保存できる
全ての投稿したコーディネートを見られるようにする。


#### 詳細

コーディネートの情報を入力し、保存しトップページで表示できるようにする。
ニックネーム、メールアドレス、パスワード、性別を保存する。

#### ストーリー

・私は私服を着る際に毎回どのコーディネートにしようか迷うことがある。
・毎日私服で通勤通学する人は毎日考えないといけないため、迷う気力や時間を無くせば朝の忙しい時間他のことが出来たり、朝から選択疲れしなくても良いなと思いこのアプリの企画を考えた
・一度良いなと思ったコーディネートを忘れることもあるので残しておけば次着る時に考えずに済むような記録が欲しい


### 実装した機能についてのGIFと説明

### 実装予定の機能
今日、今週のコーディネート機能(コーディネートを決めてくれる)
コメント、いいね機能
ゲストログイン機能
ゲスト投稿機能
コーディネートカテゴリー分け
### データベース設計
https://gyazo.com/1a9616ed8b77b337f23272611591f9a3
### ローカルでの動作方法

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
| title              | string      | null: false       |
| description        | text        | null: false       |
| recommended_point  | string      | null: false       | 
| favorite_item      | references  | foreign_key:true  |
| use                | references  | foreign_key:true  |
| user               | references  | foreign_key:true  |


### Association

- belongs_to :user
- has_many   :comments

## comments テーブル

| Column       | Type        | Options                       |
| ------------ | ----------- | ----------------------------- |
| text         | text        | null: false                   |
| user         | references  | foreign_key: true             |
| coordination | references  | foreign_key: true             |

### Association

- belongs_to :user
- belongs_to :coordination

