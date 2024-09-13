import 'dart:async';
import 'dart:math';

import 'package:fashionista/data/data.dart';
import 'package:flutter/material.dart';

class ScrollingImages extends StatefulWidget {
  final int startingIndex;

  const ScrollingImages({
    super.key,
    required this.startingIndex,
  });

  @override
  State<ScrollingImages> createState() => _ScrollingImagesState();
}

class _ScrollingImagesState extends State<ScrollingImages> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset ==
          _scrollController.position.minScrollExtent) {
        _autoScrollForward();
      } else if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        _autoScrollBackward();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScrollForward();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _autoScrollForward() {
    final currentPosition = _scrollController.offset;
    final endPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 20 + widget.startingIndex + 2),
          curve: Curves.linear);
    });
  }

  _autoScrollBackward() {
    final currentPosition = _scrollController.offset;
    final endPosition = _scrollController.position.minScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 20 + widget.startingIndex + 2),
          curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: h * 0.6,
        width: w * 0.6,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 8, left: 8, top: 10),
              height: h * 0.6,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(
                          modelsImages[index + widget.startingIndex]),
                      fit: BoxFit.cover)),
            );
          },
        ),
      ),
    );
  }
}
