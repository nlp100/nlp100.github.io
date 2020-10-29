---
title: "关于自然语言处理入门100练"
date: 2020-08-26 11:46:20 +0800
layout: single
toc: true
lang: zh
sidebar: {nav: "sidebar_zh"}
---

## 更新日志

### 2020-10-29

+ 完成了汉语版本的翻译工作 :tada:
  + 全章节的翻译由Runzhe Zhan与Youmi Ma协力完成。

### 2020-06-08
发布 [自然语言处理入门100练2020 Rev 1](http://nlp100.github.io/).

+ 完成了英语版本的翻译工作 :tada:
  + 第5章到第10章的翻译由 [Shun Kiyono](https://butsugiri.github.io/), [Benjamin Heinzerling](https://bheinzerling.github.io/), Ana Brassard, 与 [Paul Reisert](http://www.cl.ecei.tohoku.ac.jp/~preisert/) 协力完成。
  + 修正了问题07中的拼写错误 ([#12](https://github.com/nlp100/nlp100.github.io/pull/12))
  + 在第4章中增添了一个已进行词性标注的文本资料 ([#13](https://github.com/nlp100/nlp100.github.io/issues/13))
  + 修改了问题38的描述 ([#14](https://github.com/nlp100/nlp100.github.io/issues/14))
  + 修改了问题08的描述 ([#24](https://github.com/nlp100/nlp100.github.io/pull/24))
  + 修正了问题18中的错误翻译
  + 其他关于拼写与写作风格的修正
+ 韩语翻译版本公开 (更新至问题39) :sparkles:
  + 第1章到第4章的翻译由 [Sangwhan Moon](https://sangwhan.com/) 协力完成。
+ 修复了日语版本中的多个问题 :sweat_smile:
  + 修正了第8章中的一个名称表述  ([#1](https://github.com/nlp100/nlp100.github.io/pull/1))
  + 修复了问题49中的一个数学公式渲染问题 ([#2](https://github.com/nlp100/nlp100.github.io/pull/2))
  + 修正了第6章的标题错误 ([#2](https://github.com/nlp100/nlp100.github.io/pull/2))
  + 修正了第4章中的数据错误 ([#6](https://github.com/nlp100/nlp100.github.io/issues/6))
  + 修改了问题51的描述 ([#7](https://github.com/nlp100/nlp100.github.io/issues/7))
  + 修改了问题50与51的描述 ([#8](https://github.com/nlp100/nlp100.github.io/pull/8))
  + 修改了问题75的描述 ([#9](https://github.com/nlp100/nlp100.github.io/pull/9))
  + 修正了第5章中的错误链接 ([#16](https://github.com/nlp100/nlp100.github.io/pull/16))
  + 修改了问题04的描述 ([#18](https://github.com/nlp100/nlp100.github.io/pull/18))
  + 更换了第5章的样例文本以减少依存关系解析时的错误 ([#19](https://github.com/nlp100/nlp100.github.io/issues/19))
  + 修改了问题69的描述 ([#21](https://github.com/nlp100/nlp100.github.io/issues/21))
  + 修改了问题71的描述 ([#22](https://github.com/nlp100/nlp100.github.io/issues/22))

我们十分感谢各位对本项目包括报告 [Issues](https://github.com/nlp100/nlp100.github.io/issues) 以及提交 [Pull Requests](https://github.com/nlp100/nlp100.github.io/pulls)在内的各种贡献！ :pray:

### 2020-04-06
发布 [自然语言处理入门100练 2020](http://nlp100.github.io/).

+ 增加了深度神经网络的相关问题。
+ 多语言支持。
  + 发布了英语翻译版本 (问题00到39)。
  + 将旧版第6章(英语文本信息处理)移至英语版本。

### 2015-03-12
发布 [自然语言处理入门100练 2015](http://www.cl.ecei.tohoku.ac.jp/nlp100/) (仅日语版).

+ 增加与分布表示相关的问题。
+ 公开与问题集相配套的数据。
+ 围绕实践用途的NLP若干议题而修订本问题集。

### 2012-04-03
发布 [初始第一版](http://www.cl.ecei.tohoku.ac.jp/index.php?NLP%20100%20Drill%20Exercises) (仅日语版)。

## 数据资源

+ [popular-names.txt](/data/popular-names.txt): 由[美国Social Security Administration (SSA)](http://www.ssa.gov/)对[Beyond the Top 1000 Names](https://www.ssa.gov/oact/babynames/limits.html)网站所公开的[全国数据](https://www.ssa.gov/oact/babynames/names.zip) 进行处理并转换到TSV格式。
+ [enwiki-country.json.gz](/data/enwiki-country.json.gz): 描述国家信息的文章(JSON格式)是从[English Wikipedia dump](http://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2)2020年4月5日的存档版本中抽取的。 本文件通过[Creative Commons Attribution-ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-sa/3.0/legalcode)协议传播。
+ [alice.zip](/data/alice.zip): Lewis Carroll所著小说 "[Alice’s Adventures in Wonderland](https://www.gutenberg.org/files/11/11-h/11-h.htm)"的数字文本资源来自[Project Gutenberg](https://www.gutenberg.org/)。 请参阅 `11.txt` 文件获取关于[Project Gutenberg License](https://www.gutenberg.org/wiki/Gutenberg:The_Project_Gutenberg_License)的更多信息。
+ [ai.en.zip](/data/ai.en.zip): 文章"[Artificial intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence)" 来自于[Wikipedia英语版](https://en.wikipedia.org/)。该文件通过[Creative Commons Attribution-ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-sa/3.0/legalcode)协议传播。

## 关于自然语言处理入门100练

+ 自然语言处理入门100练由东京工业大学的[岡崎直観](https://www.nlp.c.titech.ac.jp/)先生进行编制与维护。
+ 编制2020版本的过程中，十分感谢东北大学[乾・鈴木研究室](https://www.nlp.ecei.tohoku.ac.jp/)的[清野舜](https://butsugiri.github.io/)先生就问题构想给出建议并进行了校对工作，以及[横井祥](http://www.cl.ecei.tohoku.ac.jp/~yokoi/)先生和[高橋諒](https://reiyw.com/)先生对问题构想提供了协力。
+ 2020年的版本由[清野舜](https://butsugiri.github.io/)先生，[Benjamin Heinzerling](https://bheinzerling.github.io/)先生，Ana Brassard，[Paul Reisert](http://www.cl.ecei.tohoku.ac.jp/~preisert/)先生，[岡崎直観](https://www.nlp.c.titech.ac.jp/)先生翻译至英文。
+ 2020年的版本由[Sangwhan Moon](https://sangwhan.com/)先生翻译至韩语。
+ 自然语言处理入门100练，最开始由岡崎直観先生在2011-2012年编制，原本被用于东北大学[乾・岡崎研究室（当时）](http://www.cl.ecei.tohoku.ac.jp/)（现在的[乾・鈴木研究室](https://www.nlp.ecei.tohoku.ac.jp/)）的新人研修系列活动之一，作为编程基础学习会上的指导资源。
+ 通过解决100道习题帮助新生入门自然语言处理研究的形式，受到[名古屋大学的佐藤理史先生](https://sites.google.com/site/sslabnagoya/)的研究室中所开展的实践活动所启发。
+ 「100本ノック」这个命名由目前乾・岡崎研究室所属的杉浦純先生所提出。


## 联络方式

我们欢迎任何在[GitHub](https://github.com/nlp100/nlp100.github.io)上对本项目以 [issues](https://github.com/nlp100/nlp100.github.io/issues) 与 [pull requests](https://github.com/nlp100/nlp100.github.io/pulls) 形式提出的反馈或建议。除此之外，关于其他的咨询与联络请寄送电子邮件到 `nlp100` at `nlp.c.titech.ac.jp`。
