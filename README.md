# Spring Boot 기반 쇼핑몰 프로젝트

> ## S/W 개발 환경

- **개발환경** : Tomcat v9.0, Spring Tool Suite 4, MySQL, Github, Naver ChatBot, Mybatis, MVC model, Oracle
- **개발언어** : JAVA, CSS, JSP, JavaScript, SQL

> ## 쇼핑몰 프로젝트 기능

- 회원가입/정보수정/탈퇴/회원목록
- 로그인/로그아웃
- 상품등록/상품목록/상품수정
- 공지목록/생성/수정/삭제
- 장바구니 추가/삭제
- 주문내역
- Q&A(Naver ChatBot)

> ## 추가적으로 구현할 기능

- 주문시 재고 변경
- 상품삭제
- 주문기능
- 상품 리뷰
- 챗봇 서비스 개선(질문 추가)

> ## 메인 화면

![](/images/homepage.jpg)

> ## 로그인

- 회원 등급을 관리자(admin)와 일반회원으로 나눔
- interceptor를 사용하여 admin만 사용가능한 주소 설정(공지생성, 공지수정, 공지삭제, 상품등록, 상품수정 등)
