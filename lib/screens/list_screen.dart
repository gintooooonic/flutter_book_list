import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('도서 목록 앱'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('쉽고 빠른 플러터 앱 개발'),
              leading: Image.network(
                  'https://simage.kyobobook.co.kr/images/book/large/514/l9791165921514.jpg'),
            ),
            ListTile(
              title: Text('Do it! 플러터 앱 프로그래밍'),
              leading: Image.network(
                  'https://simage.kyobobook.co.kr/images/book/large/892/l9791163032892.jpg'),
            ),
            ListTile(
              title: Text('모두가 할 수 있는 플러터 UI 입문'),
              leading: Image.network(
                  'https://simage.kyobobook.co.kr/images/book/large/818/l9791185553818.jpg'),
            ),
            ListTile(
              title: Text('플러터 인 액션'),
              leading: Image.network(
                  'https://simage.kyobobook.co.kr/images/book/large/862/l9791162243862.jpg'),
            ),
          ],
        ));
  }
}
