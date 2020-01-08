---
layout: default
title: "言語処理100本ノック 2019"
brand: "言語処理100本ノック"

menu:
  - title: 第1章
    href: "#ch01"
  - title: 第2章
    href: "#ch02"
  - title: 第3章
    href: "#ch03"
  - title: 第4章
    href: "#ch04"
  - title: 第5章
    href: "#ch05"
  - title: 第6章
    href: "#ch06"
  - title: 第7章
    href: "#ch07"
  - title: 第8章
    href: "#ch08"
  - title: 第9章
    href: "#ch09"
  - title: 第10章
    href: "#ch10"

summary: "言語処理100本ノックは，実践的な課題に取り組みながら，プログラミング，データ分析，研究のスキルを楽しく習得することを目指した問題集です．"

features:
  - 実用的でワクワクするような題材を厳選しました．
  - 言語処理に加えて，統計や機械学習などの周辺分野にも親しめます．
  - 研究やデータ分析の進め方，作法，スキルを修得できます．
  - 問題を解くのに必要なデータ・コーパスを配布しています．
  - 言語はPythonを想定していますが，他の言語にも対応しています．

carousel:
  - url: assets/image/vsm.png
    alt: "vsm"
  - url: assets/image/country.png
    alt: "country"
  - url: assets/image/sentiment.png
    alt: "sentiment"
  - url: assets/image/zipf.png
    alt: "zipf"
  - url: assets/image/neko.png
    alt: "neko"

cards:
  - title: "第1章: 準備運動"
    summary: "テキストや文字列を扱う題材に取り組みながら，プログラミング言語のやや高度なトピックを復習します．"
    keywords: "文字列, ユニコード, リスト型, 辞書型, 集合型, イテレータ, スライス, 乱数"
  - title: "第2章: UNIXコマンドの基礎"
    summary: "研究やデータ分析において便利なUNIXツールを体験します．これらの再実装を通じて，プログラミング能力を高めつつ，既存のツールのエコシステムを体感します．"
    keywords: "head, tail, cut, paste, split, sort, uniq, sed, tr, expand"
  - title: "第3章: 正規表現"
    summary: "Wikipediaのページのマークアップ記述に正規表現を適用することで，様々な情報・知識を取り出します．"
    keywords: "正規表現, JSON, Wikipedia, InfoBox, ウェブサービス"
  - title: "第4章: 形態素解析"
    summary: "夏目漱石の小説『吾輩は猫である』に形態素解析器を適用し，小説中の単語の統計を求めます．"
    keywords: "形態素解析, MeCab, 品詞, 出現頻度, Zipfの法則, matplotlib, Gnuplot"
  - title: "第5章: 係り受け解析"
    summary: "『吾輩は猫である』に係り受け解析器を適用し，係り受け木の操作と統語的な分析を体験します．"
    keywords: "クラス, 係り受け解析, CaboCha, 文節, 係り受け, 格, 機能動詞構文, 係り受けパス, Graphviz"
  - title: "第6章: 機械学習の基礎"
    summary: "文書分類器を機械学習で構築します．さらに，機械学習手法の評価方法を学びます．"
    keywords: "文書分類, トークン化, 機械学習, 特徴量, ロジスティック回帰, 正解率, 適合率, 再現率, F1スコア, 混同行列，交差検定, 正則化, scikit-learn"
  - title: "第7章: 単語ベクトル"
    summary: "単語の類似度計算や単語アナロジーなどを通して，単語ベクトルの取り扱いを修得します．さらに，クラスタリングやベクトルの可視化を体験します．"
    keywords: "単語ベクトル, コサイン類似度, 加法構成性, 単語アナロジー, k-meansクラスタリング, 階層型クラスタリング, t-SNE"
  - title: "第8章: ニューラルネットワーク"
    summary: "ニューラルネットワークを深層学習プラットフォームを用いて実装に基づくの実装を習得します．"
    keywords: "単層ニューラルネットワーク, 多層ニューラルネットワーク, 活性化関数, ソフトマックス関数, 損失関数, 確率的勾配降下法, ミニバッチ学習, GPU, チェックポイント"
  - title: "第9章: 深層ニューラルネット"
    summary: ""
    keywords: "RNN, LSTM, GRU, 双方向, 多層"
  - title: "第10章: エンコーダ・デコーダ"
    summary: ""
    keywords: ""
---

{% include jumbotron.html %}

{% include cards.html %}

{% include chapter.html id="ch01" src="chapters/ch01.ja.md" %}
{% include chapter.html id="ch02" src="chapters/ch02.ja.md" %}
{% include chapter.html id="ch03" src="chapters/ch03.ja.md" %}
{% include chapter.html id="ch04" src="chapters/ch04.ja.md" %}
{% include chapter.html id="ch05" src="chapters/ch05.ja.md" %}
{% include chapter.html id="ch06" src="chapters/ch06.ja.md" %}
{% include chapter.html id="ch07" src="chapters/ch07.ja.md" %}
{% include chapter.html id="ch08" src="chapters/ch08.ja.md" %}
{% include chapter.html id="ch09" src="chapters/ch09.ja.md" %}
{% include chapter.html id="ch10" src="chapters/ch10.ja.md" %}
