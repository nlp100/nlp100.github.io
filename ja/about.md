---
title: "言語処理100本ノックについて"
date: 2020-06-07 10:32:21 +0900
layout: single
toc: true
lang: ja
sidebar: {nav: "sidebar_ja"}
---

## 更新履歴

### 2020-10-29

+ 中国語版の完成　:tada:
  + 中国語への翻訳はRunzhe Zhanさん，Youmi Maさんにご協力頂きました．
### 2020-06-08
[言語処理100本ノック 2020 Rev 1](http://nlp100.github.io/)を公開

+ 英語版の完成 :tada:
  + 第5章から第10章の英訳は，[清野舜](https://butsugiri.github.io/)さん，[Benjamin Heinzerling](https://bheinzerling.github.io/)さん，Ana Brassardさん，[Paul Reisert](http://www.cl.ecei.tohoku.ac.jp/~preisert/)さんにご協力いただきました．
  + 問題07の綴り間違いの修正（[#12](https://github.com/nlp100/nlp100.github.io/pull/12)）
  + 第4章において品詞タグ付け済のデータを配布（[#13](https://github.com/nlp100/nlp100.github.io/issues/13)）
  + 問題38の文面の修正（[#14](https://github.com/nlp100/nlp100.github.io/issues/14)）
  + 問題08の文面の修正（[#24](https://github.com/nlp100/nlp100.github.io/pull/24)）
  + 問題18の翻訳誤りの修正
  + その他，綴り間違いやスタイルの修正
+ 韓国語版の公開（39番まで翻訳完了）:sparkles:
  + 韓国語への翻訳は[Sangwhan Moon](https://sangwhan.com/)さんにご協力頂きました．
+ 日本語版における数多くのバグを修正 :sweat_smile:
  + 第8章における表記の修正（[#1](https://github.com/nlp100/nlp100.github.io/pull/1)）
  + 問題49の数式表示の修正（[#2](https://github.com/nlp100/nlp100.github.io/pull/2)）
  + 第6章の章タイトルの修正（[#2](https://github.com/nlp100/nlp100.github.io/pull/2)）
  + 第3章のデータの間違いを修正 ([#6](https://github.com/nlp100/nlp100.github.io/issues/6))
  + 問題51の文面の修正（[#7](https://github.com/nlp100/nlp100.github.io/issues/7) ）
  + 問題50および51の文面の修正（[#8](https://github.com/nlp100/nlp100.github.io/pull/8)）
  + 問題75の表記の修正（[#9](https://github.com/nlp100/nlp100.github.io/pull/9)）
  + 第5章におけるリンクの修正（[#16](https://github.com/nlp100/nlp100.github.io/pull/16)）
  + 問題04の文面の修正（[#18](https://github.com/nlp100/nlp100.github.io/pull/18)）
  + 第5章の係り受け解析の誤りに対処するため，用いるテキストを変更（[#19](https://github.com/nlp100/nlp100.github.io/issues/19)）
  + 問題69の文面の修正（[#21](https://github.com/nlp100/nlp100.github.io/issues/21)）
  + 問題71の文面の修正（[#22](https://github.com/nlp100/nlp100.github.io/issues/22)）

[Issues](https://github.com/nlp100/nlp100.github.io/issues)を報告して頂いた皆様，および[Pull Requests](https://github.com/nlp100/nlp100.github.io/pulls)を送って頂いた皆様に感謝申し上げます．:pray:

### 2020-04-06
[言語処理100本ノック 2020](http://nlp100.github.io/)を公開
+ 深層ニューラルネットワークに関する問題を追加
+ 多言語対応
  + 英語版の公開（39番まで翻訳完了）
  + 旧第6章（英語テキストの処理）を英語版に移動

### 2015-03-12
[言語処理100本ノック 2015](http://www.cl.ecei.tohoku.ac.jp/nlp100/)を公開
+ 単語の分散表現に関する問題を追加
+ 利用するデータを再配布可能なものに変更
+ より実践的な題材へ改訂

### 2012-04-03
[初版](http://www.cl.ecei.tohoku.ac.jp/index.php?NLP%20100%20Drill%20Exercises)を公開

## 配布しているデータについて

+ [popular-names.txt](/data/popular-names.txt): 米国[社会保障局 (SSA: Social Security Administration)](http://www.ssa.gov/)のウェブサイト"[Beyond the Top 1000 Names](https://www.ssa.gov/oact/babynames/limits.html)"で公開されている[全州のデータ](https://www.ssa.gov/oact/babynames/names.zip)を加工し，TSV形式に変換したものです．
+ [jawiki-country.json.gz](/data/jawiki-country.json.gz): 2020年4月5日付けの[日本語のWikipedia記事のダンプ](http://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2)の中から，国家に言及していると思われる記事を抽出し，JSON形式で格納したものです．このファイルは，[クリエイティブ・コモンズ 表示-継承 3.0 非移植](http://creativecommons.org/licenses/by-sa/3.0/legalcode)のライセンスで配布されています．
+ [neko.txt](/data/neko.txt): [青空文庫](http://www.aozora.gr.jp/)で公開されている夏目漱石の長編小説『吾輩は猫である』をテキストファイルに整形したものです．
+ [ai.ja.zip](/data/ai.ja.zip): [日本語Wikipedia](https://ja.wikipedia.org/)の「[人工知能](https://ja.wikipedia.org/wiki/%E4%BA%BA%E5%B7%A5%E7%9F%A5%E8%83%BD)」に関する記事から，テキスト部分を取り出したファイルを収録しています．このファイルは，[クリエイティブ・コモンズ 表示-継承 3.0 非移植](http://creativecommons.org/licenses/by-sa/3.0/legalcode)のライセンスで配布されています．

## 言語処理100本ノックについて

+ 言語処理100本ノックの問題は，東京工業大学の[岡崎直観](https://www.nlp.c.titech.ac.jp/)により制作・保守されています．
+ 2020年版の制作に際して，東北大学[乾・鈴木研究室](https://www.nlp.ecei.tohoku.ac.jp/)の[清野舜](https://butsugiri.github.io/)さんに問題の構想と校閲，[横井祥](http://www.cl.ecei.tohoku.ac.jp/~yokoi/)さんと[高橋諒](https://reiyw.com/)さんに問題の構想について，協力して頂きました．
+ 2020年版は，[清野舜](https://butsugiri.github.io/)さん，[Benjamin Heinzerling](https://bheinzerling.github.io/)さん，Ana Brassardさん，[Paul Reisert](http://www.cl.ecei.tohoku.ac.jp/~preisert/)さん，[岡崎直観](https://www.nlp.c.titech.ac.jp/)によって英訳されました．
+ 2020年版は，[Sangwhan Moon](https://sangwhan.com/)さんによって韓国語に翻訳されました．
+ 言語処理100本ノックは，2011-2012年ごろに岡崎直観によって初版が作成され，東北大学の[乾・岡崎研究室（当時）](http://www.cl.ecei.tohoku.ac.jp/)（現在は[乾・鈴木研究室](https://www.nlp.ecei.tohoku.ac.jp/)）の新人研修の一つであるプログラミング基礎勉強会で使われてきました
+ 言語処理研究を目指す学生が100問のプログラミング課題を解くという方式は，もともと[名古屋大学の佐藤理史先生](https://sites.google.com/site/sslabnagoya/)の研究室で行われていたものです
+ 「100本ノック」という名前は，乾・岡崎研究室に在籍していた杉浦純さんが付けました


## 連絡先

フィードバックや助言は、[GitHub](https://github.com/nlp100/nlp100.github.io)レポジトリの[issues](https://github.com/nlp100/nlp100.github.io/issues)や[pull requests](https://github.com/nlp100/nlp100.github.io/pulls)にお寄せ頂けますと助かります．それ以外のお問い合わせについては，`nlp100` at `nlp.c.titech.ac.jp`までメールでご連絡ください．
