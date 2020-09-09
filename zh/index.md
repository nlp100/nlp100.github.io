---
title: "自然语言处理入门100练 2020 (Rev 1)"
lang: zh
date: 2020-08-26 11:09:17 +0800
layout: splash
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  og_image: /assets/images/nlp100.jpg
  overlay_image: /assets/images/blue-and-red-galaxy-artwork-1629236.jpg
excerpt: "自然语言处理入门100练，是一个为该领域初学者设计的问题集，旨在通过完成实用且令人兴奋的课题来帮助他们掌握该领域编程、数据分析与进行研究活动所需的技能。[详细](about.html){: .btn .btn--info .btn--small}"
button_html: |
  <div class="pinterest"><a data-pin-do="buttonBookmark" data-pin-tall="true" href="https://www.pinterest.com/pin/create/button/"></a></div> <a class="twitter-share-button" href="https://twitter.com/intent/tweet">Tweet</a> <div class="fb-like" data-href="https://nlp100.github.io/en/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
script_html: |
  <!-- Pinterest -->
  <script async defer src="//assets.pinterest.com/js/pinit.js"></script>
  <!-- Twitter -->
  <script>window.twttr = (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0],
      t = window.twttr || {};
    if (d.getElementById(id)) return t;
    js = d.createElement(s);
    js.id = id;
    js.src = "https://platform.twitter.com/widgets.js";
    fjs.parentNode.insertBefore(js, fjs);

    t._e = [];
    t.ready = function(f) {
      t._e.push(f);
    };

    return t;
  }(document, "script", "twitter-wjs"));</script>
  <!-- Facebook -->
  <div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v6.0&appId=535222267422576&autoLogAppEvents=1"></script>

feature_row:
  - image_path: assets/images/ch01.png
    alt: "placeholder image 1"
    title: "第1章: 热身运动"
    excerpt: "处理字符串与文本数据，同时复习编程语言中重要的进阶话题。"
    url: "/zh/ch01.html"
  - image_path: assets/images/ch02.png
    alt: "placeholder image 2"
    title: "第2章: UNIX 指令"
    excerpt: "体验在研究与数据分析中实用的UNIX工具。透过这一过程提升编程技能并对现有工具链的生态有所感知。"
    url: "/zh/ch02.html"
  - image_path: assets/images/ch03.en.png
    alt: "placeholder image 2"
    title: "第3章: 正则表达式"
    excerpt: "使用正则表达式从Wikipedia标签中抽取多种信息与知识。"
    url: "/zh/ch03.html"
  - image_path: assets/images/ch04.png
    alt: "placeholder image 1"
    title: "第4章: 词性(POS)标注"
    excerpt: "对《Alice's Adventures in Wonderland》的文本使用词性(Part-Of-Speech)标注器，并获取篇章中词语的统计学信息。"
    url: "/zh/ch04.html"
  - image_path: assets/images/ch05.en.png
    alt: "placeholder image 2"
    title: "第5章: 依存关系解析"
    excerpt: "通过将依存关系解析器应用于小说《Alice's Adventures in Wonderland》，体验创建并分析依存关系树。"
    url: "/zh/ch05.html"
  - image_path: assets/images/ch06.png
    alt: "placeholder image 2"
    title: "第6章: 机器学习"
    excerpt: "构造一个基于机器学习方法的文本分类器. 此外，学习机器学习中的评估方法。"
    url: "/zh/ch06.html"
  - image_path: assets/images/ch07.png
    alt: "placeholder image 1"
    title: "第7章: 词向量"
    excerpt: "通过词语相似度与单词类比的计算，学习词向量的处理方式。此外，体验聚类算法与词向量的可视化。"
    url: "/zh/ch07.html"
  - image_path: assets/images/ch08.png
    alt: "placeholder image 2"
    title: "第8章: 神经网络"
    excerpt: "学习深度学习框架的使用方法，并实现一个基于神经网络的文本分类器。"
    url: "/zh/ch08.html"
  # - image_path: assets/images/ch09.png
  #   alt: "placeholder image 2"
  #   title: "第9章: RNN 与 CNN"
  #   excerpt: "使用深度学习框架实现循环神经网络(Recurrent Neural Networks, RNNs)与卷积神经网络(Convolutional Neural Networks, CNNs)。"
  #   url: "/zh/ch09.html"
  # - image_path: assets/images/ch10.png
  #   alt: "placeholder image 2"
  #   title: "第10章: 机器翻译"
  #   excerpt: "利用现有的工具，构建神经机器翻译模型。"
  #   url: "/zh/ch10.html"
---

{% include feature_row %}
