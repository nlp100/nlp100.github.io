---
title: "言語処理100本ノックについて"
date: 2020-04-05T17:00:00+09:00
layout: single
toc: true
lang: ja
sidebar: {nav: "sidebar_ja"}
---

## 更新履歴

### 2020-03-2x
+ [言語処理100本ノック 2020](http://nlp100.github.io/)を公開
+ 深層ニューラルネットワークに関する問題を追加
+ 多言語対応（英語版の公開，英語のテキスト処理の問題は英語版に移動）

### 2015-03-12
+ [言語処理100本ノック 2015](http://www.cl.ecei.tohoku.ac.jp/nlp100/)を公開
+ 単語の分散表現に関する問題を追加
+ 再配布可能なデータが題材となるように改訂
+ より実践的な題材へ改定

### 2012-04-03
+ [初版](http://www.cl.ecei.tohoku.ac.jp/index.php?NLP%20100%20Drill%20Exercises)を公開

## データについて

+ [baby-names.txt](/data/baby-names.txt): 米国[社会保障局 (SSA: Social Security Administration)](http://www.ssa.gov/)のウェブサイト"[Beyond the Top 1000 Names](https://www.ssa.gov/oact/babynames/limits.html)"で公開されている[全州のデータ](https://www.ssa.gov/oact/babynames/names.zip)を加工し，TSV形式に変換したもの．
+ [jawiki-country.json.gz](/data/jawiki-country.json.gz): 2014年10月18日付けの[日本語のWikipedia記事のダンプ](http://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2)の中から，国家に言及していると思われる記事を抽出し，JSON形式で格納したものです．このファイルは，[クリエイティブ・コモンズ 表示-継承 3.0 非移植](http://creativecommons.org/licenses/by-sa/3.0/legalcode)のライセンスで配布されています．
+ [neko.txt](/data/neko.txt): [青空文庫](http://www.aozora.gr.jp/)で公開されている夏目漱石の長編小説『吾輩は猫である』をテキストファイルに整形したものです．

## 言語処理100本ノックについて

+ 東北大学の[乾・岡崎研究室（当時）](http://www.cl.ecei.tohoku.ac.jp/)の新人研修の一つであるプログラミング基礎勉強会での利用を想定して作られました
+ 言語処理研究を目指す学生が100問のプログラミング課題を解くという方式は，もともと[名古屋大学の佐藤理史先生](https://sites.google.com/site/sslabnagoya/)の研究室で行われていたものです
+ 「100本ノック」という名前は，乾・岡崎研究室に在籍していた杉浦純さんが付けました
+ 問題の改定に際して，東北大学乾・鈴木研究室の清野舜さんに協力して頂きました
+ 英語版の準備に際して，東北大学乾・鈴木研究室の...さんに協力して頂きました
