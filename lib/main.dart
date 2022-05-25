import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RenderBox',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RenderBox'),
          elevation: 0,
          foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.greenAccent[100],
        body: const AAA(),
      ),
    );
  }
}

/* 
1
프로젝트 폴더 바로 하위에 폴더 이름이 
assets이면, Image.asset('bird.jpg')과 같이 바로 파일이름을 적으면 되지만
images이면, Image.asset('images/birdd.jpg')과 같이 폴더명도 붙여줘야 함

2
pubspec에 assets에 폴더 추가시, 실행중인 프로그램 종료후 컴파일+실행 시켜야 
*/
class AAA extends StatelessWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 1000,
          height: 1500,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purpleAccent, width: 2),
          ),
          // width: double.infinity,
          // height: double.infinity,
          child: Column(
            children: <Widget>[
              Image.asset('01bird-3.jpg'),
              Image.asset('birdd.jpg'),
              Image.asset('images/birdd.jpg', height: 300),
              Image.asset('images/birDDD.jpg', height: 300),
              Image.asset('images/birddD.jpg', height: 300),
            ],
          ),
        ),
      ],
    );
  }
}
