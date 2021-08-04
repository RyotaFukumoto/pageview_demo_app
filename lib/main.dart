import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text('PageView'),),
          body: const MyStateLessPage()),
    );
  }
}

class MyStateLessPage extends StatelessWidget {
  const MyStateLessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 1);
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: const<Widget>[
        Center(
          child: Text('1ページ目！'),
        ),
        Center(
          child: Text('2ページ目'),
        ),
        Center(
          child: Text('3ページ目'),
        )
      ],
    );
  }
}
