import 'package:fast_food_app/data/dummy_data.dart';
import 'package:fast_food_app/views/screens/home/home_widgets.dart';
import 'package:fast_food_app/views/screens/home/tabs/pizza/pizza_tab/pizza_tab.dart';
import 'package:flutter/material.dart';
import 'tabs/donut/donut_tab/donut_tab.dart';
import 'tabs/smoothie/smoothie_tab/smoothie_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabBarItems.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBarItems.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 36,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 10),
              icon: Icon(
                Icons.person_rounded,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // account button tapped
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  const IWantToEat(),
                  const SizedBox(
                    height: 15,
                  ),

                  // tab bar
                  TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicatorWeight: 0.01,
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        for (int i = 0; i < tabBarItems.length; i++) ...[
                          TabIcon(
                              item: tabBarItems[i],
                              isSelected: _tabController.index == i)
                        ]
                      ]),

                  // tab bar view
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        DonutTab(),
                        // smoothie screen
                        SmoothieTab(),
                        // pizza screen
                        PizzaTab(),
                        // burger screen
                        Center(
                          child: Text("Burger"),
                        ),
                        // pancake screen
                        Center(
                          child: Text("Pancake"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(
                bottom: 5,
                top: MediaQuery.of(context).size.height * 0.78,
                child: const ViewCart())
          ],
        ),
      ),
    );
  }
}
