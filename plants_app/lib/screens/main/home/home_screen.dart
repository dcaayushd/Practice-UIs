import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../data/data.dart';
import '../../../utils/assets.dart';

import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: plantCategories.length, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: false,
                floating: false,
                toolbarHeight: 110,
                flexibleSpace: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning!",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Sarah",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Spacer(),
                        AppBarIcon(
                          svgPath: AppAssets.svgIcons.notificationIcon,
                          count: "7",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AppBarIcon(
                          svgPath: AppAssets.svgIcons.bagIcon,
                          count: "2",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                elevation: 0,
                toolbarHeight: 125,
                flexibleSpace: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySearchBar(),
                      TabBar(
                          controller: tabController,
                          isScrollable: true,
                          indicatorWeight: 0.01,
                          padding: EdgeInsets.zero,
                          indicatorPadding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          tabs: [
                            for (int i = 0;
                                i < plantCategories.length;
                                i++) ...[
                              TabIcon(
                                  text: plantCategories[i],
                                  isSelected: tabController.index == i)
                            ]
                          ]),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: SafeArea(
            child: MasonryGridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: allPlants.length,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              padding: const EdgeInsets.all(5),
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) {
                return PlantCard(plant: allPlants[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
