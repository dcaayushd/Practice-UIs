import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_login/dummy_data/data.dart';
import 'package:travel_app_login/screens/home/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int iconSelected = 0;
  void goToSection(int index) {
    if (iconSelected != index) {
      setState(() {
        iconSelected = index;
      });
    }
  }

  final ScrollController controller = ScrollController();

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
                toolbarHeight: 115,
                flexibleSpace: Container(
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      const SizedBox(height: 05),
                      Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: HomeScreenTopText(),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 40,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverAppBar(
                backgroundColor: const Color(0xFFF3F5F7),
                pinned: true,
                elevation: 5,
                toolbarHeight: 100,
                flexibleSpace: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < _icons.length; i++)
                        InkWell(
                          onTap: () {
                            goToSection(i);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: iconSelected == i
                                  ? Theme.of(context).colorScheme.secondary
                                  : const Color(0xFFE7EBEE),
                            ),
                            child: Icon(
                              _icons[i],
                              color: i == iconSelected
                                  ? Theme.of(context).primaryColor
                                  : const Color(0xFFB4C1C4),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: IndexedStack(
            index: iconSelected,
            children: [
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: [
                  const SectionTitle(title: "Top Destinations"),
                  const SizedBox(
                      height: 470, child: ScrollingTopDestinations()),
                  const SectionTitle(title: "Personalized for You"),
                  SizedBox(
                    height: 300,
                    child: ScrollingDestinationCards(
                      destinationsList: myDestinations,
                    ),
                  ),
                  const SectionTitle(title: "Exclusive Hotels"),
                  SizedBox(
                    height: 240,
                    child: ScrollingHotelsCards(hotels: myHotels),
                  ),
                  const SectionTitle(title: "Exciting Activities"),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 300,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Exciting Activities Placeholder",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SectionTitle(title: "Famous Sights"),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 300,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        "Famous Sights Placeholder",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const Center(child: Text("Placeholder for section 2")),
              const Center(child: Text("Placeholder for section 3")),
              const Center(child: Text("Placeholder for section 4")),
              const Center(child: Text("Placeholder for section 5")),
            ],
          ),
        ),
      ),
    );
  }
}

List<IconData> _icons = [
  FontAwesomeIcons.compass,
  FontAwesomeIcons.plane,
  FontAwesomeIcons.bed,
  FontAwesomeIcons.streetView,
  FontAwesomeIcons.personBiking,
];
