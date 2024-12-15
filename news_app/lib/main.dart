import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

// Color 1 #5B44DA
// Color 2 #7B71F6

const pink = Color(0xFF5B44DA);
const lightPink = Color(0xFF7B71F6);
final List<Map<String, dynamic>> posts = [
  {
    'userImage': 'assets/1.jpeg',
    'username': 'Adrian Schultz',
    'title': 'Cleaning And Organizing Your Computer',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquam quam id facilisis tempor. Aenean quis gravida justo.',
    'id': 1,
    'time': '2 minutes ago',
    'bookmarked': true
  },
  {
    'userImage': 'assets/2.jpg',
    'username': 'Mario Mitchell',
    'title': 'Choosing The Best Audio Player Software For Your Computer',
    'description':
        'Nunc sed cursus dolor, eu dictum ipsum. Aenean luctus consectetur eros nec tincidunt. Sed at velit finibus nisi pellentesque tempor.',
    'id': 2,
    'time': '1 hour ago',
    'bookmarked': false
  },
  {
    'userImage': 'assets/3.jpeg',
    'username': 'Steve Mann',
    'title': 'Thousands Now Remove Adware Removal Who Never Thought They Could',
    'description': '',
    'id': 3,
    'time': '20 minutes ago',
    'bookmarked': false
  }
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [pink, lightPink],
            ),
            boxShadow: [
              BoxShadow(
                color: pink,
                offset: const Offset(0, 2.0),
                blurRadius: 20.0,
              )
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: controller,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BubbleTabIndicator(
            indicatorHeight: 25.0,
            indicatorColor: Colors.white,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: const <Widget>[
            Tab(
              text: "For you",
            ),
            Tab(
              text: "Trendings",
            ),
            Tab(
              text: "Populars",
            ),
            Tab(
              text: "Best publishers",
            ),
          ],
          onTap: (int val) {},
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          const MainPage(),
          OtherTabPage(
            title: "Trendings",
          ),
          OtherTabPage(
            title: "Populars",
          ),
          OtherTabPage(
            title: "Best publishers",
          )
        ],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width - 40,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 2.0),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    AssetImage(posts[index]['userImage']!),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    posts[index]['username']!,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    posts[index]['time']!,
                                    style: const TextStyle(color: Colors.black54),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        posts[index]['bookmarked'] == true
                            ? const Icon(
                                Icons.bookmark,
                                size: 32.0,
                                color: Colors.blue,
                              )
                            : const Icon(
                                Icons.bookmark_border,
                                size: 32.0,
                                color: Colors.black54,
                              )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      posts[index]['title']!,
                      style: const TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w500),
                    ),
                    (posts[index]['description'] as String).isEmpty
                        ? const SizedBox.shrink()
                        : Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                posts[index]['description']!,
                                style: const TextStyle(color: Colors.black54),
                              )
                            ],
                          )
                  ],
                ),
              );
            },
            itemCount: posts.length,
          ),
        ),
      ],
    );
  }
}

class OtherTabPage extends StatelessWidget {
  final String title;
  const OtherTabPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}