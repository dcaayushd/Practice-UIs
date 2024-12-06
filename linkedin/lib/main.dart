import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn',
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.grey[700]),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(232, 229, 222, 1.0),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1.0,
        title: Row(
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpeg"),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 241, 246, 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    GestureDetector(child: const Icon(Icons.qr_code_scanner)),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.textsms),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: DUMMY_POSTS.length,
        itemBuilder: (context, index) => Column(
          children: [
            PostCard(
              post: DUMMY_POSTS[index],
            ),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
      bottomNavigationBar: const Bottomnavigationbar(),
    );
  }
}

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({
    super.key,
  });

  @override
  BottomnavigationbarState createState() => BottomnavigationbarState();
}

class BottomnavigationbarState extends State<Bottomnavigationbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) => setState(() {
        _currentIndex = index;
      }),
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      selectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "My Network",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: "Post",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: "Jobs",
        ),
      ],
    );
  }
}

// class PostCard extends StatelessWidget {
//   const PostCard({
//     super.key,
//     required this.post,
//   });

//   final Map<String, dynamic> post;

//   @override
//   Widget build(BuildContext context) {
//     print(post);
//     return Container(
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           // Header Post
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(post["userImage"]),
//                   radius: 25,
//                 ),
//                 const SizedBox(width: 10.0),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Row(
//                               children: [
//                                 Flexible(
//                                   fit: FlexFit.loose,
//                                   child: Text(
//                                     post["userName"],
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .bodyLarge!
//                                         .copyWith(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                     maxLines: 1,
//                                     overflow: TextOverflow.ellipsis,
//                                     textWidthBasis: TextWidthBasis.longestLine,
//                                   ),
//                                 ),
//                                 const SizedBox(width: 1.0),
//                                 const Text("•"),
//                                 const SizedBox(width: 1.0),
//                                 Text(
//                                   post["number"],
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .labelSmall!
//                                       .copyWith(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         post["currentPosition"],
//                         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                               fontSize: 14,
//                             ),
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       Text(
//                         post["createdAt"],
//                         style: Theme.of(context).textTheme.labelSmall!.copyWith(
//                               fontSize: 14,
//                             ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Icon(Icons.more_horiz),
//               ],
//             ),
//           ),
//           // Caption
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Text(
//               post["caption"],
//               style: Theme.of(context).textTheme.labelSmall!.copyWith(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black,
//                   ),
//             ),
//           ),
//           if (post["image"] != null) Image.network(post["image"]),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               children: <Widget>[
//                 // A list of badges
//                 Row(
//                   children: <Widget>[
//                     ...post["likeBadges"].map(
//                       (badge) => SvgPicture.asset(
//                         badge,
//                         height: 20.0,
//                         width: 20.0,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 5.0),
//                 Text(
//                   "13",
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelSmall!
//                       .copyWith(fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             child: Divider(
//               thickness: 1.0,
//               height: 0,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               TextButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                   foregroundColor: WidgetStateProperty.all(
//                     const Color.fromRGBO(102, 102, 102, 1.0),
//                   ),
//                 ),
//                 child: const Column(
//                   children: <Widget>[
//                     Icon(Icons.thumb_up_outlined),
//                     Text(
//                       "Like",
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                   foregroundColor: WidgetStateProperty.all(
//                     const Color.fromRGBO(102, 102, 102, 1.0),
//                   ),
//                 ),
//                 child: const Column(
//                   children: <Widget>[
//                     Icon(Icons.comment_outlined),
//                     Text(
//                       "Comment",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                   foregroundColor: WidgetStateProperty.all(
//                     const Color.fromRGBO(102, 102, 102, 1.0),
//                   ),
//                 ),
//                 child: const Column(
//                   children: <Widget>[
//                     Icon(Icons.share),
//                     Text(
//                       "Share",
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                   foregroundColor: WidgetStateProperty.all(
//                     const Color.fromRGBO(102, 102, 102, 1.0),
//                   ),
//                 ),
//                 child: const Column(
//                   children: <Widget>[
//                     Icon(Icons.send),
//                     Text(
//                       "Send",
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });

  final Map<String, dynamic> post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Header Post
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: _getImageProvider(post["userImage"]),
                  radius: 25,
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                    post["userName"],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textWidthBasis: TextWidthBasis.longestLine,
                                  ),
                                ),
                                const SizedBox(width: 1.0),
                                const Text("•"),
                                const SizedBox(width: 1.0),
                                Text(
                                  post["number"],
                                  style: Theme.of(context)
                                      .textTheme.labelSmall
                                      !
                                      .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        post["currentPosition"],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        post["createdAt"],
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
          // Caption
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              post["caption"],
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
            ),
          ),
          if (post["image"] != null) 
            _buildNetworkImageWithFallback(post["image"]),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                // A list of badges
                Row(
                  children: <Widget>[
                    ...post["likeBadges"].map(
                      (badge) => SvgPicture.asset(
                        badge,
                        height: 20.0,
                        width: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5.0),
                Text(
                  "13",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              thickness: 1.0,
              height: 0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildActionButton(
                icon: Icons.thumb_up_outlined,
                label: "Like",
                onPressed: () {},
              ),
              _buildActionButton(
                icon: Icons.comment_outlined,
                label: "Comment",
                onPressed: () {},
              ),
              _buildActionButton(
                icon: Icons.share,
                label: "Share",
                onPressed: () {},
              ),
              _buildActionButton(
                icon: Icons.send,
                label: "Send",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to handle image loading with fallback
  ImageProvider _getImageProvider(String? imageUrl) {
    if (imageUrl == null || imageUrl.isEmpty) {
      return const AssetImage('assets/images/default_avatar.png');
    }
    return NetworkImage(imageUrl);
  }

  // Helper method to build network image with error handling
  Widget _buildNetworkImageWithFallback(String? imageUrl) {
    if (imageUrl == null || imageUrl.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        print('Image load error: $error');
        return Container(
          height: 200,
          color: Colors.grey[300],
          child: const Center(
            child: Icon(
              Icons.image_not_supported,
              color: Colors.grey,
              size: 50,
            ),
          ),
        );
      },
    );
  }

  // Helper method to create consistent action buttons
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(
          const Color.fromRGBO(102, 102, 102, 1.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}