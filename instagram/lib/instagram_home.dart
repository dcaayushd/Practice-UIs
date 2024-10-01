import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

class InstagramHome extends StatelessWidget {
  const InstagramHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.camera_alt,
          color: Colors.black,
          size: 30,
        ),
        title: Image.asset("assets/logo.PNG"),
        centerTitle: true,
        actions: const [RotatedSendMessageIcon(size: 30)],
        elevation: 0.3,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 31,
        elevation: 1,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Reels",
            icon: Icon(Icons.video_call),
          ),
          BottomNavigationBarItem(
            label: "Activity",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: ListView(
        // or a Column inside a SingleChildScrollView will do similar job
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(1),
            height: 98,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return StoryWidget(
                    assetName: stories[stories.length - index - 1],
                    username: usernames[index],
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 0),
                // both physics works
                // physics: NeverScrollableScrollPhysics(),
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: dummyPosts.length,
                itemBuilder: (context, index) {
                  return PostWidget(index: index);
                }),
          )
        ],
      ),
    );
  }
}

/// Widgets

class StoryWidget extends StatelessWidget {
  final String assetName;
  final String username;

  const StoryWidget(
      {super.key, required this.assetName, required this.username});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
//                          borderRadius: BorderRadius.all(Radius.circular(45)),
              gradient: LinearGradient(colors: colors),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(assetName),
              radius: 28,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            username,
            textScaler: const TextScaler.linear(0.8),
            style: const TextStyle(
                overflow: TextOverflow.ellipsis, color: Colors.black87),
          )
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final int index;

  const PostWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          /// user image and username
          Container(
            margin: const EdgeInsets.only(bottom: 3, top: 2),
            child: Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: colors),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage(stories[stories.length - index - 1]),
                    radius: 15,
                  ),
                ),
                Text(
                  " ${dummyPosts[index].username}",
                  textScaler: const TextScaler.linear(1.2),
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.black.withOpacity(0.6),
                )
              ],
            ),
          ),

          /// main content - image
          Image.asset(
            dummyPosts[index].image,
            fit: BoxFit.fitHeight,
          ),

          /// like,comment,share, ... , save
          Row(
            children: [
              dummyPosts[index].isLiked
                  ? const PostWidgetIcon(
                      icon: Icons.favorite, color: Colors.red)
                  : const PostWidgetIcon(icon: Icons.favorite_border),
              const PostWidgetIcon(icon: Icons.comment_bank_rounded),
              const RotatedSendMessageIcon(size: 35),
              const Spacer(),
              const PostWidgetIcon(icon: Icons.bookmark_border),
              const Divider(),
            ],
          ),

          /// Captions and stuff
          Container(
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            child: RichText(
              maxLines: 2,
              text: TextSpan(
                style: const TextStyle(
                    color: Colors.black, overflow: TextOverflow.ellipsis),
                children: <TextSpan>[
                  TextSpan(
                      text: dummyPosts[index].username.toString(),
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: '   ${dummyPosts[index].caption}'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}

/// small helper widgets
class PostWidgetIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const PostWidgetIcon(
      {super.key, required this.icon, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Icon(
        icon,
        size: 35,
        color: color,
      ),
    );
  }
}

class RotatedSendMessageIcon extends StatelessWidget {
  final double size;

  const RotatedSendMessageIcon({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Transform.rotate(
          angle: 320 * math.pi / 180,
          child: Icon(
            Icons.send_sharp,
            size: size,
            color: Colors.black,
          )),
    );
  }
}

/// Data
List usernames = [
  "ashish.dev",
  "dcaayushd",
  "hello_world",
  "heaven",
  "random_tiktoker",
  "tech_reviews",
  "s_eajal",
  "blade_runner"
];

List<String> captions = [
  "I'm an original and that's perfection in itself",
  "You can't dull my sparkle ✨",
  "An apple a day will keep anyone away if you throw it hard enough.",
  "Give second chances but not for the same mistake",
  "Life is the biggest party you'll ever be at.",
  "I'm an original and that's perfection in itself",
  "You can't dull my sparkle ✨",
  "An apple a day will keep anyone away if you throw it hard enough."
];

List<Color> colors = [
  const Color(0xFFF58529),
  const Color(0xFFFEDA77),
  const Color(0xFFDD2A7B),
  const Color(0xFF8134AF),
  const Color(0xFF515BD4),
];

/// Generators

List stories =
    List<String>.generate(8, (index) => "assets/people/${index + 1}.jfif");

double falseProbability = .3;

List<PostModel> dummyPosts = List<PostModel>.generate(8, (i) {
  return PostModel(
      usernames[i].toString().toLowerCase(),
      "assets/posts/${i + 1}.png",
      Random().nextDouble() > falseProbability,
      int.parse(Random().nextInt(500).toString()) + 500,
      captions[i]);
});

/// Models
class PostModel {
  final String username;
  final String image;
  final bool isLiked;
  final int likes;
  final String caption;

  PostModel(this.username, this.image, this.isLiked, this.likes, this.caption);
}
