import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../widgets/bottom_nav_bar.dart';
import '../animations/animations.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _planeController;
  late Animation<double> _planeAnimation;
  late AnimationController _countController;
  late Animation<int> _helipadCountAnimation;
  late Animation<int> _generationCountAnimation;
  late AnimationController _logoController;
  late Animation<double> _logoAnimation;
  late AnimationController _containerAnimationController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _planeController = createPlaneAnimationController(this);
    _planeAnimation = createPlaneAnimation(_planeController);
    _planeController.repeat(reverse: true);

    _countController = createCountAnimationController(this);
    _helipadCountAnimation = createHelipadCountAnimation(_countController);
    _generationCountAnimation =
        createGenerationCountAnimation(_countController);
    _countController.forward();

    _logoController = createLogoAnimationController(this);
    _logoAnimation = createLogoAnimation(_logoController);
    _logoController.forward();

    _containerAnimationController = createContainerAnimationController(this);
    _containerAnimationController.forward();
  }

  @override
  void dispose() {
    _planeController.dispose();
    _countController.dispose();
    _logoController.dispose();
    _containerAnimationController.dispose();
    super.dispose();
  }

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, _logoAnimation),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(context, _containerAnimationController),
            const SizedBox(height: 20),
            buildPlaneAnimation(_planeAnimation),
            Center(
              child: build360Icon(),
            ),
            const SizedBox(height: 20),
            buildStatsRow(
              context,
              _containerAnimationController,
              _helipadCountAnimation,
              _generationCountAnimation,
            ),
            const SizedBox(height: 20), 
          ],
        ),
      ),
      bottomNavigationBar:
          buildBottomNavigationBar(context, _selectedIndex, _onIconTapped),
    );
  }

  IconData getIconForIndex(int index) {
    switch (index) {
      case 0:
        return IconlyLight.home;
      case 1:
        return IconlyLight.wallet;
      case 2:
        return IconlyLight.location;
      case 3:
        return IconlyLight.time_circle;
      case 4:
        return IconlyLight.setting;
      default:
        return IconlyLight.home;
    }
  }
}
