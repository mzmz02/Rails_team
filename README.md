# Travel Reviews
2人でRailsアプリケーションを作成した。

2人で作成後、Herokuを用いて公開した。
https://travelreview.herokuapp.com/

<img width="567" alt="rails" src="https://user-images.githubusercontent.com/65856455/89713114-73f3bd80-d9d0-11ea-9861-0d622faed37b.PNG">

# Dependency
Ruby/Ruby on Railsを用いている。

# 役割分担(私が担当したところ）
Userモデルの作成（Scaffoldを使わずに自分でルーティングやコントローラ、ビューファイルなどを作成）

ログイン・ログアウトページとそれらの機能の作成

ログインしているユーザを判定し、それに応じたヘッダーの作成（各ページのリンクに飛べるように紐づけ）

ページのアクセス制限（ログインしているユーザか、編集や削除の権限があるユーザか）<br>
　それぞれのページにおいてエラー文の表示
 
ユーザ画像でを扱えるようにした<br>
　（テーブルにカラムを追加してマイグレーションファイルを作成。初期画像を設定し、編集ページから各ユーザが画像を選択できるようにした。送信された画像はpublic/user_imagesにuserのid.jpgに保存。画像ファイルの作成にはFile.binwriteを用いた。）
  
Goodモデルの作成（ペアと協力して行った）

Goodモデルを用いていいねの数をカウントした

数字で選択された評価を☆で表示させた

投稿するときに、ログイン中のユーザ情報を登録した

User List,User Information, Reviws Listのレイアウトの作成

New Postのバリデーションのエラー表示におけるレイアウトの崩れの調整

トップページに画像をループさせるアニメーションの一部作成
