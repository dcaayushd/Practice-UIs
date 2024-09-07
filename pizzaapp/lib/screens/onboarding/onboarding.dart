import 'package:flutter/material.dart';
import '../../screens/home/home_screen.dart';
import '../../utils/assets.dart';
import '../../utils/colors.dart';

class PizzaOnboarding extends StatelessWidget {
  const PizzaOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
            right: 20,
            child: InkWell(
              onTap: () => Navigator.of(context).pushReplacement(
                SlideLeftRoute(page: const HomeScreen()),
              ),
              child: Text(
                "Skip",
                textScaler: const TextScaler.linear(1.5),
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.65)),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: screenHeight * 0.45,
              width: screenWidth,
              color: backgroundColor,
            ),
          ),
          Positioned(
            left: 30,
            right: 0,
            bottom: screenHeight * 0.37,
            child: SizedBox(
              height: screenHeight * 0.50,
              child: Image.asset(
                onboardingChef,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: screenHeight * 0.46,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      height: 110,
                      width: 110,
                      child: Image.asset(onboardingPizzaSample)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "#Pizza for you",
                    textScaler: TextScaler.linear(1.7),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: screenWidth * 0.8,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: button1Color,
                          shape: const StadiumBorder()),
                      child: const Text(
                        'Sign up with Email',
                        textScaler: TextScaler.linear(1.4),
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: screenWidth * 0.8,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: button2Color,
                          shape: const StadiumBorder()),
                      child: const Text(
                        'Sign up with Google',
                        textScaler: TextScaler.linear(1.4),
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  SlideLeftRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 300),
        );
}
