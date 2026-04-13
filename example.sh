#!/bin/sh

wsm="./rs-jsontxt2token.wasm"

jq -c -n '[
    "hello, world",
    "hello\nworld",
    "いつもお世話になっております。\n先日の件ですが、資料の通り改善案を追記しましたのでご確認よろしくお願いいたします。",
    "東京証券取引所プライム上場企業",
    "次世代人工知能総合処理基盤構築計画資料改版"
]' |
    jq -c '.[]' |
	wasmtime run "${wsm}" |
    dasel --read=json --write=toml |
    bat --language=toml
