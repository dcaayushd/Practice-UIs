import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: darkBackgroundColor,
        colorScheme: const ColorScheme.dark(),
        primaryColor: primaryColor,
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            automaticallyImplyLeading: false,
            titleSpacing: size.width - 410.0,
            forceElevated: true,
            elevation: 1.0,
            pinned: false,
            floating: true,
            snap: true,
            toolbarHeight: 120.0,
            title: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Theme.of(context).primaryColor,
                        size: 30.0,
                      ),
                      SvgPicture.asset(
                        'assets/icons/twitter_logo.svg',
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor,
                          BlendMode.srcIn,
                        ),
                        width: 40.0,
                      ),
                      SvgPicture.asset(
                        'assets/icons/content_preference.svg',
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor,
                          BlendMode.srcIn,
                        ),
                        width: 30.0,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      const Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1319568255225397249/nD-wrZhw_x96.jpg'),
                              radius: 25.0,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 5,
                            child: CircleAvatar(
                              radius: 8.0,
                              child: Icon(
                                Icons.add,
                                size: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0),
                      ...dummyStories.map(
                        (story) => Story(
                          userName: story['userName'],
                          image: story['userImage'],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    '${dummyPosts[index]['userImage']}'),
                                radius: 30.0,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // header
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '${dummyPosts[index]['userName']}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            '${dummyPosts[index]['account']}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Text(
                                            '•',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Text(
                                            '${dummyPosts[index]['createdDate']}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .color,
                                    ),
                                  ],
                                ),
                                // caption
                                Text(
                                  '${dummyPosts[index]['caption']}',
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                if (dummyPosts[index]['image'] != null)
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.network(
                                        '${dummyPosts[index]['image']}',
                                        fit: BoxFit.fitWidth,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ),
                                  ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/comment.svg',
                                          colorFilter: ColorFilter.mode(
                                            Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .color!,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                            '${dummyPosts[index]['quoteRetweets']}'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/retweet.svg',
                                          colorFilter: ColorFilter.mode(
                                            Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .color!,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        const SizedBox(width: 10.0),
                                        Text(
                                            '${dummyPosts[index]['retweets']}'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          dummyPosts[index]['liked'] == true
                                              ? 'assets/icons/like.svg'
                                              : 'assets/icons/like_outlined.svg',
                                          colorFilter: ColorFilter.mode(
                                            dummyPosts[index]['liked'] == true
                                                ? Colors.red
                                                : Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .color!,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text('${dummyPosts[index]['likes']}'),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/share.svg',
                                      colorFilter: ColorFilter.mode(
                                        Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .color!,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: .5,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ],
                );
              },
              childCount: dummyPosts.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, right: 0.0, bottom: 20.0, left: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
              child: SvgPicture.asset(
                index == 0
                    ? 'assets/icons/home.svg'
                    : 'assets/icons/home_outlined.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcIn,
                ),
                width: 30.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: SvgPicture.asset(
                index == 1
                    ? 'assets/icons/search_selected.svg'
                    : 'assets/icons/search.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcIn,
                ),
                width: 30.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: SvgPicture.asset(
                index == 2
                    ? 'assets/icons/notifications.svg'
                    : 'assets/icons/notifications_outlined.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcIn,
                ),
                width: 30.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 3;
                });
              },
              child: SvgPicture.asset(
                index == 3
                    ? 'assets/icons/messages.svg'
                    : 'assets/icons/messages_outlined.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcIn,
                ),
                width: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    super.key,
    this.userName,
    this.image,
  });

  final String? userName;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 3.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                radius: 22.0,
                backgroundImage: NetworkImage(image!),
              ),
            ),
          ),
          LimitedBox(
            maxWidth: 60.0,
            child: Text(
              userName!,
              style: const TextStyle(
                fontSize: 14.0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
