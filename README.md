# これは何
[Mark](https://github.com/kovetskiy/mark)を使って再帰的にmarkdownをConfluenceに同期させる、サンプルプロジェクトです。

Markの説明は、リポジトリdescriptionのURLを参照下さい。

## プロジェクト構成

```
.
├── basic_example/          # 例となるMarkdownファイル（メタデータコメント付き）
│   ├── intro.md
│   └── project/
│       ├── overview.md
│       └── api/
│           ├── auth.md
│           └── index.md
├── docs/                   # メタデータ無しのMarkdownファイル
│   ├── intro.md
│   └── project/
│       ├── overview.md
│       └── api/
│           ├── auth.md
│           └── index.md
└── mark_reclusive.sh       # 再帰的にMarkdownファイルを処理するスクリプト
```

## 機能


`mark_reclusive.sh`スクリプトは、`docs`ディレクトリ内のすべてのMarkdownファイルを再帰的に処理し、`mark`コマンドを使用して構造化されたドキュメントを生成します。

## 使用方法

前提. mark_reclusive.sh内の `"docs" `や `"概要"` は、環境によって書き換えて下さい。

1. `mark`コマンドがインストールされていることを確認
2. `~/.config/mark.toml`設定ファイルが存在することを確認
3. スクリプトを実行：

```bash
sh mark_reclusive.sh
```

スクリプトは`docs`ディレクトリ内のすべての`.md`ファイルを検索し、各ファイルに対して`mark`コマンドを実行します。

