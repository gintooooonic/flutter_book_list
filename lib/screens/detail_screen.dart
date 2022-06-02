import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('쉽고 빠른 플러터 앱 개발'),
      ),
      body: Column(
        children: [
          Image.network(
              'https://simage.kyobobook.co.kr/images/book/large/514/l9791165921514.jpg'),
          Padding(
            padding: EdgeInsets.all(3),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        '쉽고 빠른 플러터 앱 개발',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Flutter & Dart로 화면 구현ㆍ상태 관리ㆍ데이터 처리ㆍ디자인 패턴 익히기',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Icon(
                  Icons.star,
                  color: Colors.red,
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
