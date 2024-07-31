# さまざまな言語アプリをモノレポで管理する。

# 狙い
・売れるアプリを開発する

・seo学習

・A/Bテスト

・アナリティクス分析

・自分の言語平行学習


# 韓国語初級
[iOS 版](https://apps.apple.com/jp/app/%E9%9F%93%E5%9B%BD%E8%AA%9E%E5%88%9D%E7%B4%9A/id6503278804)

![image](https://github.com/user-attachments/assets/76244c6d-0fac-4a98-abd7-27630be726a6)


# ビルド

```sh
$ make bs
```

# ディレクトリ構造

```sh
root
├── apps                           --- アプリ本体
│   │  
├── packages
│   ├──  core
│   │      ├── dao                 --- infraにデータアクセスするオブジェクト
│   │      └── data                --- アプリのクイズの問題を格納
│   │      └── designsystem        --- font や colorなど アプリのデザイン設定、localization 設定
│   │      └── foundation          --- constans,emun,extensionなど
│   │      └── model               --- core 共通model
│   │      └── ui                  --- アプリで使う共通ui部分
│   │      └── repository          --- network以外のデータ操作を抽象化
│   │      └── router              --- タイプセーフなルート設定
│   │      └── utility             --- logger やその他utility
│   │      └── test_util           --- test用の utility
│   │
│   └── feature
│          └── quiz
│          └── setting
│          └── splash
│          └── wordlist
│
├── melos.yaml  
├── pubspec.yaml 
└── README.md

```
