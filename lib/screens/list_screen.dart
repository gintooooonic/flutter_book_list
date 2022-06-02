import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        children: [
          BookTile(
            title: '쉽고 빠른 플러터 앱 개발',
            subtitle: 'Flutter & Dart로 화면 구현ㆍ상태 관리ㆍ데이터 처리ㆍ디자인 패턴 익히기',
            description:
                '인프런의 인기 강의, “무작정 시리즈” 제작자가 직접 집필한 플러터 도서. 초심자들도 어렵지 않은, 쉽고 빠른 플러터 앱 개발!',
            image:
                'https://simage.kyobobook.co.kr/images/book/large/514/l9791165921514.jpg',
          ),
          BookTile(
            title: 'Do it! 플러터 앱 프로그래밍',
            subtitle: '오픈 API 활용 + 파이어베이스 + 구글 맵 + 광고 수익까지',
            description:
                '플러터 기본 & 고급 위젯은 물론 오픈 API와 파이어베이스를 이용한 앱 개발부터 배포까지! 플러터 SDK 2.x 버전을 반영한 개정판!',
            image:
                'https://simage.kyobobook.co.kr/images/book/large/892/l9791163032892.jpg',
          ),
          BookTile(
            title: '모두가 할 수 있는 플러터 UI 입문',
            subtitle: '플러터 2 반영|Dart 기초부터 7가지 유형의 UI 제작까지',
            description:
                '이 책은 플러터 2.x 최신 버전을 사용했으며 Flutter와 Dart 기초부터 7가지 유형의 앱/웹 UI를 직접 만들면서 배운다!',
            image:
                'https://simage.kyobobook.co.kr/images/book/large/818/l9791185553818.jpg',
          ),
          BookTile(
            title: '플러터 인 액션',
            subtitle: '안드로이드와 iOS 애플리케이션을 한 번에 개발하는 완벽 가이드',
            description:
                '플러터는 렌더링 엔진에서 테스트 환경까지 아우르는 기능을 제공하는 SDK로 모바일 애플리케이션을 단일 언어로 손쉽게 구축할 수 있다. 플러터와 다트로 수준 높은 모바일 애플리케이션을 구축하는 방법을 소개한다. 먼저 다트 기초를 간단히 살펴보고 플러터의 방대한 내장 위젯으로 아름다운 UI를 구현하는 방법을 자세히 알아본다. 라우팅, 상태 관리, 비동기 프로그래밍과 같은 복잡한 주제를 쉽게 이해할 수 있도록 다이어그램과 예제, 친절한 주석을 함께 제공한다.',
            image:
                'https://simage.kyobobook.co.kr/images/book/large/862/l9791162243862.jpg',
          ),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              subtitle: subtitle,
              description: description,
              image: image,
            ),
          ),
        );
      },
    );
  }
}
