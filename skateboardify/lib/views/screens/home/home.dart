import 'package:flutter/material.dart';
import 'package:skateboardify/data/data.dart';

import '../detail/detail.dart';
import 'widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late ValueNotifier<double> _pageValue;
  late ValueNotifier<bool> _showAppBar;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 1, initialPage: 0);
    _pageController.addListener(_pageListener);
    _showAppBar = ValueNotifier(false);

    Future.delayed(const Duration(milliseconds: 10))
        .whenComplete(() => _showAppBar.value = true);

    _pageValue = ValueNotifier(0.0);
    super.initState();
  }

  void _pageListener() {
    _pageValue.value = _pageController.page!;
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
    _pageValue.dispose();
    _showAppBar.dispose();
    super.dispose();
  }

  void _goNextPage(context, board) async {
    _showAppBar.value = false;
    await Navigator.push(
        context,
        PageRouteBuilder(
          reverseTransitionDuration: const Duration(milliseconds: 600),
          transitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                  position: animation.drive(
                      Tween(begin: const Offset(0.0, 1.0), end: Offset.zero)
                          .chain(CurveTween(curve: Curves.ease))),
                  child: DetailScreen(
                    board: board,
                  )),
            );
          },
        ));
    _showAppBar.value = true;
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.05),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.1,
                child: ValueListenableBuilder(
                  valueListenable: _showAppBar,
                  builder: (context, value, child) {
                    return AnimatedCustomAppBar(animate: value);
                  },
                ),
              ),
              Expanded(
                  child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(milliseconds: 600),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                },
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: allSkatesList.length,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    final board = allSkatesList[index];
                    return ValueListenableBuilder(
                      valueListenable: _pageValue,
                      builder: (context, value, child) {
                        final delta = (value - index).abs();
                        return SkateSlide(
                          skateBoard: board,
                          delta: delta,
                          onTapSpec: () => _goNextPage(context, board),
                        );
                      },
                    );
                  },
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
