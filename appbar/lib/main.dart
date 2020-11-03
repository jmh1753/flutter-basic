import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            //아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할때
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu button is clicked');
            }),
        actions: [
          //복수의 아이콘 버튼 등을 오른쪽에 배치할때
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping_cart button is clicked');
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button is clicked');
              }),
        ],
      ),
    );
  }
}
