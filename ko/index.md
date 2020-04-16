---
title: "100문제로 두드려 보는 자연어처리 2020"
lang: ko
date: 2020-04-06 22:22:38 UTC
layout: splash
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  og_image: /assets/images/nlp100.jpg
  overlay_image: /assets/images/blue-and-red-galaxy-artwork-1629236.jpg
excerpt: "100문제로 두드려 보는 자연어처리는, 실용적이고 재미있는 과제들을 풀어나가면서, 프로그래밍, 데이터 분석, 연구 능력을 즐겁게 습득하는 것을 목표로한 문제집입니다."
button_html: |
  <a href="https://b.hatena.ne.jp/entry/" class="hatena-bookmark-button" data-hatena-bookmark-layout="basic-label-counter" data-hatena-bookmark-lang="en" title="このエントリーをはてなブックマークに追加"><img src="https://b.st-hatena.com/images/v4/public/entry-button/button-only@2x.png" alt="このエントリーをはてなブックマークに追加" width="20" height="20" style="border: none;" /></a> <a class="twitter-share-button" href="https://twitter.com/intent/tweet">Tweet</a> <div class="fb-like" data-href="https://nlp100.github.io/en/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
script_html: |
  <!-- Hatena bookmark-->
  <script type="text/javascript" src="https://b.st-hatena.com/js/bookmark_button.js" charset="utf-8" async="async"></script>
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
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v6.0&appId=535222267422576&autoLogAppEvents=1"></script>

intro: 
  - excerpt: "**현재 문제 01부터 39까지만 한국어로 제공되고 있습니다. 40번부터 99번은 번역이 완료되는대로 공개 예정입니다.**"
feature_row:
  - image_path: assets/images/ch01.png
    alt: "placeholder image 1"
    title: "제1장: 준비 운동"
    excerpt: "텍스트나 문자열을 다루는 기초 문제를 통하여, 프로그래밍 연습을 하며 중요한 기초를 복습합니다."
    url: "/ko/ch01.html"
  - image_path: assets/images/ch02.png
    alt: "placeholder image 2"
    title: "제2장: UNIX 명령어"
    excerpt: "연구나 데이터 분석에 편리하게 사용 가능한 UNIX 명령어들을  소개합니다. 이를 직접 구현해보면서 프로그래밍 능력을 향상시키고, 기존의 툴이 있는 생태계를 경험합니다."
    url: "/ko/ch02.html"
  - image_path: assets/images/ch03.png
    alt: "placeholder image 2"
    title: "제3장: 정규 표현식"
    excerpt: "Wikipedia의 페이지를 대상으로 정규 표현식을 이용, 여러가지 정보와 지식을 추출하는 기법을 연습합니다."
    url: "/ko/ch03.html"
  - image_path: assets/images/ch04.png
    alt: "placeholder image 1"
    title: "제4장:형태소 분석"
    excerpt: "소설 \"이상한 나라의 앨리스\"를 데이터로 이용, 형태소 분석기로 분석하여 소설 내용에 대한 통계를 구합니다."
    url: "/ko/ch04.html"
  - image_path: assets/images/ch05.png
    alt: "placeholder image 2"
    title: "제5장: 구문 분석"
    excerpt: "소설 \"이상한 나라의 앨리스\"를 데이터로 이용, 구문 분석기를 이용한 구문 트리 사용법을 익합니다."
    url: "/ko/ch05.html"
  - image_path: assets/images/ch06.png
    alt: "placeholder image 2"
    title: "제6장: 기계 학습"
    excerpt: "기계 학습을 이용하여 문서 분류 모델을 학습하여 봅니다. 추가적으로, 기계 학습 모델의 평가 기법을 다루어 봅니다."
    url: "/ko/ch06.html"
  - image_path: assets/images/ch07.png
    alt: "placeholder image 1"
    title: "제7장: 단어 벡터"
    excerpt: "단어의 유사도 계산과 단어 유추 등을 통하여 단어 벡터 사용법을 익힙니다. 추가적으로, 클러스터링과 단어 벡터의 시각화 또한 연습합니다."
    url: "/ko/ch07.html"
  - image_path: assets/images/ch08.png
    alt: "placeholder image 2"
    title: "제8장: 신경망"
    excerpt: "딥러닝 프레임워크 사용법을 배우고, 신경망을 이용한 문서 분류 모델을 구현해봅니다."
    url: "/ko/ch08.html"
  - image_path: assets/images/ch09.png
    alt: "placeholder image 2"
    title: "제9장: RNN과 CNN"
    excerpt: "딥러닝 프레임워크를 이용하여, 재귀 신경망과 (RNN) 합성곱 신경망을 (CNN) 구현해봅니다."
    url: "/ko/ch09.html"
  - image_path: assets/images/ch10.png
    alt: "placeholder image 2"
    title: "제10장: 기계 번역"
    excerpt: "기존의 툴을 이용하여 신경망 기반 기계 번역 모델을 구현해봅니다."
    url: "/ko/ch10.html"
---

{% include feature_row id="intro" type="center" %}

{% include feature_row %}

<p class="text-center"><a href="about.html" class="btn btn--primary">100문제로 두드려 보는 자연어처리에 대하여</a></p>