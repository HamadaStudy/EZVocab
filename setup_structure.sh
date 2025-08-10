#!/bin/bash

# # ルートディレクトリ作成（必要に応じて変更）
# mkdir -p project_name

# cd project_name || exit

# config ディレクトリとファイル
mkdir -p config
touch config/firebase_options.dart
touch config/firestore_settings.dart

# ルートファイル
touch flutter_mvvm_bbs.dart
touch main.dart

# model ディレクトリ
mkdir -p model/auth
touch model/auth/auth_model.dart

mkdir -p model/firestore
touch model/firestore/firestore_model.dart

# ui/auth
mkdir -p ui/auth/view
touch ui/auth/view/auth_page.dart
touch ui/auth/view/error_page.dart
touch ui/auth/view/sign_in_page.dart

mkdir -p ui/auth/view_model
touch ui/auth/view_model/auth_view_model.dart

# ui/bbs
mkdir -p ui/bbs/view
touch ui/bbs/view/bbs_item.dart
touch ui/bbs/view/bbs_page.dart

mkdir -p ui/bbs/view_model
touch ui/bbs/view_model/bbs_view_model.dart

# ui/post
mkdir -p ui/post/view
touch ui/post/view/post_page.dart

mkdir -p ui/post/view_model
touch ui/post/view_model/post_view_model.dart

echo "ディレクトリ構成とファイルを作成しました。"