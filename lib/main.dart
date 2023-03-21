import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image'),
          elevation: 0,
          foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        // backgroundColor: Colors.greenAccent[100],
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
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Image.asset('01bird-3.jpg'),
                  // Image.asset('birdd.jpg'),
                  // Image.asset('images/birDDD.jpg', height: 300),
                  // Image.asset('images/birddD.jpg', height: 300),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('test.svg'),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    child: SvgPicture.asset('test.svg'),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 30.0,
                    height: 10.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('test.svg'),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 10.0,
                    height: 30.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('test.svg'),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 15.0,
                    height: 25.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('test.svg'),
                  ),
                  SizedBox(height: 5),
                  Divider(color: Colors.red),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('test.svg'),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('tttt.svg'),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: SvgPicture.asset('tttt2.svg'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(height: 5),
                  SizedBox(height: 5),
                  SizedBox(height: 5),
                  // Container(
                  //   decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  //   child: SvgPicture.asset('logo.svg'),
                  // ),
                  // SizedBox(height: 5),
                  // Container(
                  //   decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  //   child: SvgPicture.asset('logo2.svg'),
                  // ),
                  // SizedBox(height: 5),
                  // Container(
                  //   decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  //   child: SvgPicture.asset('logo.svg'),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
