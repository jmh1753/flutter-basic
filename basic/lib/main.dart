import 'package:flutter/material.dart';

//main(), runApp() 앞에 소문자는 함수
//MyApp() 앞에 대문자는 위젯이 클래스와 관련이 있다
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //최상위 위젯 앱의 레이아웃을 만드는 역할, 정적 stateless여야함
  @override
  Widget build(BuildContext context) {
    //모든 커스텀위젯은 또다른 위젯을 리턴하는 build라는 함수를 갖고있음, 위젯의 내용이 변하면 그때마다 호출되어 위젯을 다시 빌드하는 역할
    return MaterialApp(
      //플러터가 제공하는 모든 기본위젯과 디자인 테마를 사용하기 위해
      title: 'First app', //앱을 총칭하는 이름
      theme: ThemeData(
          //앱의 기본적인 디자인 테마를 지정
          primarySwatch: Colors.blueGrey //특정색의 음영들을 기본적으로 사용하겠다는 의미
          ),
      home: MyHomePage(), //앱이 정상적으로 실행되었을때 가장먼저 보여주는 화면
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //앱화면에 다양한 요소를 배치하고 그리게해주는 빈 도화지 => 얘 없으면 어떠한 요소도 배치할 수 없음
      appBar: AppBar(
        title: Text('App bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [Text('1'), Text('2'), Text('3')],
        ),
      ),
    );
  }
}
