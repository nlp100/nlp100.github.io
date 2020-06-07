---
title: "100문제로 두드려 보는 자연어처리에 대하여"
date: 2020-06-07 10:32:21 +0900
layout: single
toc: true
lang: ko
sidebar: {nav: "sidebar_ko"}
---

## 업데이트 이력

### 2020-06-08
[100문제로 두드려 보는 자연어처리 2020 Rev 1](http://nlp100.github.io/) 공개

+ 영문판 완성 :tada:
  + 제5장에서 제10장 전반에 걸쳐 [키요노 슌](https://butsugiri.github.io/) 님, [Benjamin Heinzerling](https://bheinzerling.github.io/)님, Ana Brassard님, [Paul Reisert](http://www.cl.ecei.tohoku.ac.jp/~preisert/)님의 도움을 받았습니다.
  + 문제07 맞춤법 교정 ([#12](https://github.com/nlp100/nlp100.github.io/pull/12))
  + 제4장에서 품사 태그가 달린 데이터 추가 ([#13](https://github.com/nlp100/nlp100.github.io/issues/13))
  + 문제 38개 내용 교정 ([#14](https://github.com/nlp100/nlp100.github.io/issues/14))
  + 문제08 내용 교정 ([#24](https://github.com/nlp100/nlp100.github.io/pull/24))
  + 문제 18번 번역 오류 수정
  + 기타 맞춤법 및 스타일 수정
+ 한국어판 공개 (39번 문제까지 번역 완료) :sparkles:
  + 한국어 번역은 [문상환](https://sangwhan.com/)님의 도움을 받았습니다.
+ 일본어판에 버그 다수 수정 :sweat_smile:
  + 제8장 표기 수정 ([#1](https://github.com/nlp100/nlp100.github.io/pull/1))
  + 문제 49번 수식 표시 수정 ([#2](https://github.com/nlp100/nlp100.github.io/pull/2))
  + 제6장 제목 수정 ([#2](https://github.com/nlp100/nlp100.github.io/pull/2))
  + 제3장 데이터 오류 수정 ([#6](https://github.com/nlp100/nlp100.github.io/issues/6))
  + 문제 51번 수정 ([#7](https://github.com/nlp100/nlp100.github.io/issues/7))
  + 문제 50와 51 내용 교정 ([#8](https://github.com/nlp100/nlp100.github.io/pull/8))
  + 문제 75번 표기 수정 ([#9](https://github.com/nlp100/nlp100.github.io/pull/9))
  + 제5장의 링크 수정 ([#16](https://github.com/nlp100/nlp100.github.io/pull/16))
  + 문제 04번 내용 교정 ([#18](https://github.com/nlp100/nlp100.github.io/pull/18))
  + 제5장 의존성 파서 오류가 없는 예제 텍스트로 변경 ([#19](https://github.com/nlp100/nlp100.github.io/issues/19))
  + 문제 69번 내용 교정 ([#21](https://github.com/nlp100/nlp100.github.io/issues/21))
  + 문제 71번 내용 교정 ([#22](https://github.com/nlp100/nlp100.github.io/issues/22))

[Issues](https://github.com/nlp100/nlp100.github.io/issues)를 통해서 문제점을 보고해주신 여러분 및 [Pull Requests](https://github.com/nlp100/nlp100.github.io/pulls)를 보내주신 여러분께 감사드립니다. :pray:

### 2020-04-06
+ [100문제로 두드려 보는 자연어처리 2020](http://nlp100.github.io/) 공개
+ 딥 뉴럴 네트워크 관련 문제 추가
+ 다국어 지원
+ 영문판 공개(39번까지 번역 완료)
+ 구 제6장(영어 텍스트 처리) 영문판으로 이동

### 2015-03-12
+ [언어처리 100개 노크 2015](http://www.cl.ecei.tohoku.ac.jp/nlp100/) 공개
+ 단어 분산 표현 관련 문제 추가
+ 연습용 데이터를 재배포 가능한 데이터셋으로 변경
+ 보다 실용적인 소재로 개선

### 2012-04-03
+ [초판](http://www.cl.ecei.tohoku.ac.jp/index.php?NLP%20100%20Drill%20Exercises) 공개

## 배포하고 있는 데이터에 대하여

+ [popular-names.txt](/data/popular-names.txt): 미국 [사회보장국(SSA: Social Security Administration)](http://www.ssa.gov/) 웹사이트 [Beyond the Top 1000 Names](https://www.ssa.gov/oact/babynames/limits.html)"에 공개되어 있는 [모든 주 데이터](https://www.ssa.gov/oact/babynames/names.zip))를 가공하여 TSV 형식으로 변환하였습니다.
+ [enwiki-country.json.gz](/data/enwiki-country.json.gz): 2020년 4월 5일자 [영어 Wikipedia 기사의 덤프](http://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2) 안에서, 국가를 언급하고 있다고 생각되는 기사를 추출해, JSON 형식으로 변환하였습니다. 이 파일은, [Creative Commons Attribution-ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-sa/3.0/legalcode) 라이선스로 배포되고 있습니다.
+ [neko.txt](/data/neko.txt): [아오조라 분코](http://www.aozora.gr.jp/)에 공개되어 있는 나쓰메소세키의 장편소설 '나는 고양이다'를 텍스트파일로 변환하였습니다.
+ [alice.zip](/data/alice.zip): 소설 "[Alice’s Adventures in Wonderland](https://www.gutenberg.org/files/11/11-h/11-h.htm)" (Lewis Carroll 저) 원문은 [Project Gutenberg](https://www.gutenberg.org/)에서 받았습니다. 배포 라이센스는 `11.txt`의 [Project Gutenberg License](https://www.gutenberg.org/wiki/Gutenberg:The_Project_Gutenberg_License)를 참고하시기 바랍니다.
+ [ai.en.zip](/data/ai.en.zip): 위키피디아 글 "[Artificial intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence)"는 [위키피디아 영문판](https://en.wikipedia.org/)에서 발췌하였습니다. 해당 파일은 [Creative Commons Attribution-ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-sa/3.0/legalcode) 라이센스에 의거하여 배포하고 있습니다.

## 언어처리 100개 노크에 대해

+ 언어 처리 100개 노크는, 동경공업대학의 [오카자키 나오아키](https://www.nlp.c.titech.ac.jp/)에 의해 제작·보수되고 있습니다.
+ 2020년판의 제작에 즈음하여, 토호쿠대학 [이누이·스즈키 연구실](https://www.nlp.ecei.tohoku.ac.jp/)의 [키요노 슌](https://butsugiri.github.io/)님이 문제의 구상과 교열, [요코이 쇼](http://www.cl.ecei.tohoku.ac.jp/~yokoi/)님과 [타카하시 료](https://reiyw.com/)님이 문제의 구상을 협력해 주셨습니다.
+ 2020년판은 [키요노 슌](https://butsugiri.github.io/)님, [Benjamin Heinzerling](https://bheinzerling.github.io/)님, Ana Brassard님, [Paul Reisert](http://www.cl.ecei.tohoku.ac.jp/~preisert/)님, 원저자 [오카자키 나오아키](https://www.nlp.c.titech.ac.jp/)이 번역하였습니다.
+ 2020년판은 [Sangwhan Moon](https://sangwhan.com/)님이 한국어로 번역하였습니다.
+ 언어 처리 100개의 노크는, 2011-2012년경에 오카자키 나오아키가 초판을 작성하여, 토호쿠대학의 [이누이·오카자키 연구실 (당시)](http://www.cl.ecei.tohoku.ac.jp/)(현재는[이누이·스즈키 연구실](https://www.nlp.ecei.tohoku.ac.jp/)) 신입생 연수 과정 중 하나인 프로그래밍 기초 스터디 모임에서 사용되어 왔습니다.
+ 언어 처리 연구를 목표로 하는 학생이 100개의 프로그래밍 과제를 푸는 방식은, 원래 [나고야대학의 사토 사토시 선생님](https://sites.google.com/site/sslabnagoya/)의 연구실의 프로그램에서 비롯되었습니다.
+ "100개의 노크"라고 하는 이름은, 이누이·오카자키 연구실에 재적하고 있던 스기우라 준님이 지었습니다.

## 연락처

피드백이나 조언은 [GitHub](https://github.com/nlp100/nlp100.github.io) 저장소의 [Issues](https://github.com/nlp100/nlp100.github.io/issues) 나 [Pull request](https://github.com/nlp100/nlp100.github.io/pulls) 형태로 보내 주시면 감사하겠습니다. 그 외의 문의에 대해서는 'nlp100`at`nlp.c.titech.ac.jp'으로 메일로 연락 주십시오. 한국어 관련해서는 Github 리포트에 @cynthia를 명시적으로 넣어주시면 도움이 됩니다.