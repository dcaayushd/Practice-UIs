import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gif/gif.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

enum Direction { up, down }

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late GifController _gifController;
  Direction _direction = Direction.down;
  double _frame = 0.0;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _gifController = GifController(vsync: this);
    _scrollController.addListener(_handleScrollEvent);
  }

  void _handleScrollEvent() {
    if (_direction == Direction.down) {
      setState(() {
        _frame -= 0.5;
        _gifController.value = math.min(math.max(_frame, 0.0), 59.0).toInt() as double;
      });
    } else if (_direction == Direction.up) {
      setState(() {
        _frame += 0.5;
        _gifController.value = math.min(math.max(_frame, 0.0), 59.0).toInt() as double;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScrollEvent);
    _scrollController.dispose();
    _gifController.dispose();
    super.dispose();
  }

  bool _handleNotification(Notification notification) {
    if (notification is ScrollNotification) {
      if (notification is UserScrollNotification &&
          notification.direction == ScrollDirection.forward) {
        setState(() {
          _direction = Direction.down;
        });
      } else if (notification is UserScrollNotification &&
          notification.direction == ScrollDirection.reverse) {
        setState(() {
          _direction = Direction.up;
        });
      }
    }

    return true;
  }

  Widget _upperSection() {
    const TextStyle textStyle =
        TextStyle(fontFamily: 'worksans', color: Colors.white);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Image.asset('assets/images/xd.png'),
          actions: <Widget>[Image.asset('assets/images/menu.png')],
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 60.0,
            ),
            Text(
              "Let your ideas",
              style: textStyle.copyWith(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Bloom",
              style: textStyle.copyWith(
                  fontSize: 100, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Share your amazing Adobe Xd Projects for the world to see",
                style: textStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Image.asset('assets/images/arrow.png'),
            const Spacer(),
            FittedBox(
              child: Gif(
                image: const AssetImage('assets/images/bloom.gif'),
                controller: _gifController,
                height: 300.0,
                width: 400.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _lowerPart() {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.pink.shade50,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: FloatingActionButton(
              backgroundColor: Colors.pink.shade100,
              splashColor: Colors.green,
              child: const Icon(
                Icons.refresh,
                color: Colors.black,
              ),
              onPressed: () {
                _scrollController.animateTo(0.0,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.fastLinearToSlowEaseIn);
                _gifController.reset();
                setState(() {
                  _frame = 0.0;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: _handleNotification,
      child: ListView(
        controller: _scrollController,
        children: <Widget>[_upperSection(), _lowerPart()],
      ),
    );
  }
}