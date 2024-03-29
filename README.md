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

## 開発の手順
#### おおまかな流れ
1．開発する機能のissueを立てる（github issues参照）  
2．ブランチを切る（```git checkout -b {ブランチ名}```）  
3．機能実装（vscode,ローカルで開発）  
4．切ったブランチにpush  
5．プルリクエスト出してmainにmerge
#### 開発用サーバ起動
```bash
npm i
npm run dev
```
#### 機能実装後
実装できたら
```bash
git add {変更したファイル名}
git commit -m "コミットメッセージ"
git push origin {ブランチ名}
```
gitの理解に不安がある　→　これでも見てろ：https://zenn.dev/atsushi101011/articles/4e0e36d238a3b8  
pushができたらgithubで確認、プルリクを出す

#### 気をつけてほしいこと
* 機能開発を始める前に今いるブランチを要確認！mainブランチでの作業は避けましょう
* お互いの作業内容を把握しましょう
* 同じファイルを同時に編集するのはできるだけ避けましょう
* こまめに```git pull```を行って、ブランチを最新の状態に保ちましょう

#### Model,Contoroller作成の流れ
```bash
sudo docker compose exec web /bin/bash //コンテナの中に入る
//Postモデル生成、Postモデルに対応するマイグレーションファイルを含め、必要なファイルを生成する
rails generate model Post title:string content:text 
//データベースマイグレーション
rails db:migrate
//controllerを作成
rails generate controller Api::V1::Posts index show create update destroy
//Gemfileいじったら
bundle install
```


#### ファイルの編集ができないとき
```bash
ls -l /home/shin/dev/ガバイソン/rails_study/config/database.yml

//パーミッションを変更する
sudo chown $(whoami) /home/shin/dev/ガバイソン/rails_study/config/database.yml

//ディレクトリのパーミッションを変更する
sudo chown -R $(whoami) /home/shin/dev/ガバイソン/rails_study/
```
