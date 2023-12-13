# 【ハンズオン】FlutterとRiverpodでgRPCの双方向ストリーミングを状態管理しよう with OpenAI API

## 概要

このリポジトリは、[【ハンズオン】FlutterとRiverpodでgRPCの双方向ストリーミングを状態管理しよう with OpenAI API](https://qiita.com)のサンプルコードです。

## ハンズオンの内容

このハンズオンでは、FlutterとRiverpodを使って、gRPCの双方向ストリーミングを状態管理する方法を学びます。
API側は、Go言語とOpenAI APIを使って、文章を生成するAPIを作成します。

## 環境構築

### Flutterのインストール

Flutterのインストールは、[公式のドキュメント](https://flutter.dev/docs/get-started/install)を参考にしてください。
なお、このハンズオンでは、Flutterのバージョンは3.16.0を使います。

### Go言語のインストール

Go言語の環境構築は、[公式のドキュメント](https://golang.org/doc/install)を参考にしてください。
なお、このハンズオンでは、Go言語のバージョンは1.21を使います。

### APIの環境構築

APIの環境構築は、以下のコマンドを実行してください。

```bash
make init
make gen
```

### Makefileの編集
取得したOpenAI APIのキーを、Makefileの以下の箇所に記載してください。

```makefile
run:
	PORT=8080 OPENAI_API_KEY=ここにAPIキーを記載する go run cmd/main.go
```

### APIの起動

APIの起動は、以下のコマンドを実行してください。

```bash
make run
```

### Flutterの起動

Flutterの起動は、以下のコマンドを実行してください。

```bash
flutter run --dart-define-from-file=config.dev.json
```