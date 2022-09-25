# data-platform-plant-sql 

data-platform-plant-sql は、データ連携基盤において、プラントデータを保存するSQLテーブルを作成するためのレポジトリです。   

## 前提条件  
data-platform-plant-sql  は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル

data-platform-plant-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-plant-sql-general-data.sql（データ連携基盤 プラント - 一般データ）
* data-platform-plant-sql-address-data.sql（データ連携基盤 プラント - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  