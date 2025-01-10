import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: const TabScaffold(),
    );
  }
}

class TabScaffold extends StatelessWidget {
  const TabScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.game_controller),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.app),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.arrow_down_circle),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const HomePage();
          case 1:
            return const GamesPage();
          case 2:
            return const AppsPage();
          case 3:
            return const UpdatesPage();
          case 4:
            return const SearchPage();
          default:
            return const HomePage();
        }
      },
    );
  }
}

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        border: null,
        middle: Text('Games'),
      ),
      child: ListView(
        children: const [
          _GamesCategorySection(title: 'New Games We Love'),
          _GamesCategorySection(title: 'Top Action Games'),
          _GamesCategorySection(title: 'Top Racing Games'),
        ],
      ),
    );
  }
}

class _GamesCategorySection extends StatelessWidget {
  final String title;

  const _GamesCategorySection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
            ),
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _GameCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _GameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 120,
              height: 120,
              color: CupertinoColors.systemGrey,
              child: const Icon(
                CupertinoIcons.game_controller,
                size: 40,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Game Name',
            style: TextStyle(
              color: CupertinoColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Action',
            style: TextStyle(
              color: CupertinoColors.white.withAlpha(153),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            color: const Color(0xFF1C1C1E),
            borderRadius: BorderRadius.circular(20),
            child: const Text('GET'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class AppsPage extends StatelessWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        border: null,
        middle: Text('Apps'),
      ),
      child: ListView(
        children: const [
          _AppsCategorySection(title: 'Featured Apps'),
          _AppsCategorySection(title: 'Top Free Apps'),
          _AppsCategorySection(title: 'Top Paid Apps'),
        ],
      ),
    );
  }
}

class _AppsCategorySection extends StatelessWidget {
  final String title;

  const _AppsCategorySection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              const Text(
                'See All',
                style: TextStyle(
                  color: CupertinoColors.activeBlue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return _AppListItem(index: index + 1);
          },
        ),
      ],
    );
  }
}

class _AppListItem extends StatelessWidget {
  final int index;

  const _AppListItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            '$index',
            style: TextStyle(
              color: CupertinoColors.white.withAlpha(153),
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 60,
              height: 60,
              color: CupertinoColors.systemGrey,
              child: const Icon(
                CupertinoIcons.app,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'App Name',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Category',
                  style: TextStyle(
                    color: CupertinoColors.white.withAlpha(153),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            color: const Color(0xFF1C1C1E),
            borderRadius: BorderRadius.circular(20),
            child: const Text('GET'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        border: null,
        middle: Text('Updates'),
      ),
      child: ListView(
        children: [
          _UpdateHeader(),
          ...List.generate(5, (index) => _UpdateItem()),
        ],
      ),
    );
  }
}

class _UpdateHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Updated Recently',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
            ),
          ),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            color: const Color(0xFF1C1C1E),
            borderRadius: BorderRadius.circular(20),
            child: const Text('Update All'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _UpdateItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 60,
                  height: 60,
                  color: CupertinoColors.systemGrey,
                  child: const Icon(
                    CupertinoIcons.app,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'App Name',
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Updated 2 days ago',
                      style: TextStyle(
                        color: CupertinoColors.white.withAlpha(153),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: const Color(0xFF1C1C1E),
                borderRadius: BorderRadius.circular(20),
                child: const Text('UPDATE'),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'What\'s New',
            style: TextStyle(
              color: CupertinoColors.white.withAlpha(153),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Bug fixes and performance improvements',
            style: TextStyle(
              color: CupertinoColors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        border: null,
        middle: CupertinoSearchTextField(),
      ),
      child: ListView(
        children: const [
          _SearchSection(title: 'Suggested'),
          _SearchSection(title: 'Top Categories'),
          _SearchSection(title: 'Quick Links'),
        ],
      ),
    );
  }
}

class _SearchSection extends StatelessWidget {
  final String title;

  const _SearchSection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _SearchCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Category',
          style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class AppDetails {
  final String name;
  final String category;
  final String developer;
  final double rating;
  final String reviews;
  final String description;
  final String icon;
  final List<String> screenshots;
  final List<String> features;
  final String size;
  final String age;
  final List<String> languages;
  final bool inAppPurchases;

  AppDetails({
    required this.name,
    required this.category,
    required this.developer,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.icon,
    required this.screenshots,
    required this.features,
    required this.size,
    required this.age,
    required this.languages,
    required this.inAppPurchases,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _openAppDetails(BuildContext context, AppDetails app) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => AppDetailsPage(app: app),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.black,
            border: null,
            largeTitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Today'),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1C1C1E),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    CupertinoIcons.profile_circled,
                    size: 36,
                    color: CupertinoColors.systemGrey,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FRIDAY 14 MAY',
                    style: TextStyle(
                      color: CupertinoColors.white.withAlpha(153),
                      fontSize: 13,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildFeaturedSection(context),
                  const SizedBox(height: 30),
                  _buildMessagingSection(context),
                  const SizedBox(height: 30),
                  _buildArcadeSection(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedSection(BuildContext context) {
    final clashRoyale = AppDetails(
      name: 'Clash Royale',
      category: 'Strategy',
      developer: 'Supercell',
      rating: 4.6,
      reviews: '12M',
      description:
          'Enter the Arena! Build your battle deck and outsmart the enemy in fast-paced battles. From the creators of CLASH OF CLANS comes a real-time multiplayer battle game starring your favorite Clash characters and more.',
      icon: 'assets/cr.png',
      screenshots: ['assets/cr_1.png', 'assets/cr_2.png', 'assets/cr_3.png'],
      features: ['Real-Time Battles', 'Card Collection', 'Team Play'],
      size: '221.3 MB',
      age: '9+',
      languages: ['English', 'French', 'German', 'Italian', 'Japanese'],
      inAppPurchases: true,
    );

    return GestureDetector(
      onTap: () => _openAppDetails(context, clashRoyale),
      child: _FeaturedCard(
        tag: 'ANNIVERSARY EVENT',
        title: 'Clash Royale turns 10!',
        description: 'Join the celebration with special events and rewards',
        image: 'assets/cr_comm.png',
        appIcon: 'assets/cr.png',
        appName: clashRoyale.name,
        category: clashRoyale.category,
      ),
    );
  }

  Widget _buildMessagingSection(BuildContext context) {
    final apps = [
      AppDetails(
        name: 'WhatsApp',
        category: 'Social Networking',
        developer: 'WhatsApp Inc.',
        rating: 4.8,
        reviews: '12M',
        description:
            'WhatsApp Messenger is a FREE messaging app available for iPhone and other smartphones. WhatsApp uses your phone\'s Internet connection to let you message and call friends and family.',
        icon: 'assets/wa.png',
        screenshots: ['assets/wa_1.png', 'assets/wa_2.png', 'assets/wa_3.png'],
        features: ['Free Messages', 'Voice Calls', 'Video Calls'],
        size: '178.2 MB',
        age: '12+',
        languages: ['English', 'Spanish', 'Portuguese', 'Arabic'],
        inAppPurchases: false,
      ),
      AppDetails(
        name: 'Telegram',
        category: 'Social Networking',
        developer: 'Telegram FZ-LLC',
        rating: 4.7,
        reviews: '8.2M',
        description:
            'Telegram is a messaging app with a focus on speed and security. It\'s super-fast, simple, and free.',
        icon: 'assets/telegram.png',
        screenshots: ['assets/tg_1.png', 'assets/tg_2.png', 'assets/tg_3.png'],
        features: ['Secure Messaging', 'Channels', 'Large Groups'],
        size: '156.8 MB',
        age: '17+',
        languages: ['English', 'Russian', 'Spanish', 'German'],
        inAppPurchases: false,
      ),
      AppDetails(
        name: 'Signal',
        category: 'Social Networking',
        developer: 'Signal Messenger LLC',
        rating: 4.6,
        reviews: '3.1M',
        description:
            'Signal is a messaging app focused on privacy. Send high-quality private messages, make crystal-clear calls, and enjoy encrypted video chat.',
        icon: 'assets/signal.png',
        screenshots: ['assets/sg_1.png', 'assets/sg_2.png', 'assets/sg_3.png'],
        features: [
          'End-to-End Encryption',
          'Private Calls',
          'Disappearing Messages'
        ],
        size: '134.5 MB',
        age: '17+',
        languages: ['English', 'French', 'German', 'Japanese'],
        inAppPurchases: false,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Apps Today',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: CupertinoColors.activeBlue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: apps
                .map((app) => Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                        onTap: () => _openAppDetails(context, app),
                        child: _AppCard(
                          appName: app.name,
                          category: app.category,
                          rating: app.rating,
                          reviews: app.reviews,
                          icon: app.icon,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildArcadeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Apple Arcade',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: CupertinoColors.activeBlue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1C1C1E),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: const [
              _ArcadeListItem(
                icon: 'assets/cr.png',
                title: 'Clash Royale',
                subtitle: 'Strategy',
              ),
              _ArcadeListItem(
                icon: 'assets/poke.png',
                title: 'NBA 2K24 Arcade',
                subtitle: 'Adventure',
              ),
              _ArcadeListItem(
                icon: 'assets/ab.png',
                title: 'Angry Birds',
                subtitle: 'Puzzle',
                showDivider: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FeaturedCard extends StatelessWidget {
  final String tag;
  final String title;
  final String description;
  final String image;
  final String appIcon;
  final String appName;
  final String category;

  const _FeaturedCard({
    required this.tag,
    required this.title,
    required this.description,
    required this.image,
    required this.appIcon,
    required this.appName,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.black.withAlpha(26),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  CupertinoColors.black.withAlpha(51),
                  BlendMode.darken,
                ),
              ),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  tag,
                  style: const TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: CupertinoColors.white.withAlpha(204),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(appIcon, height: 50, width: 50),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appName,
                        style: const TextStyle(
                          color: CupertinoColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        category,
                        style: TextStyle(
                          color: CupertinoColors.white.withAlpha(153),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'GET',
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class _ArcadeListItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final bool showDivider;

  const _ArcadeListItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final appDetails = AppDetails(
          name: title,
          category: subtitle,
          developer: 'Apple Arcade',
          rating: 4.5,
          reviews: '2.5K',
          description: 'An exclusive Apple Arcade game that brings endless entertainment.',
          icon: icon,
          screenshots: ['assets/arcade_1.png', 'assets/arcade_2.png', 'assets/arcade_3.png'],
          features: ['No Ads', 'No In-App Purchases', 'Family Sharing'],
          size: '1.2 GB',
          age: '4+',
          languages: ['English', 'Spanish', 'French', 'German'],
          inAppPurchases: false,
        );

        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => AppDetailsPage(app: appDetails),
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(icon, height: 50, width: 50),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: CupertinoColors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: CupertinoColors.white.withAlpha(153),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'GET',
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (showDivider)
            Divider(
              height: 1,
              color: CupertinoColors.black.withAlpha(26),
              indent: 78,
            ),
        ],
      ),
    );
  }
}

class AppDetailsPage extends StatelessWidget {
  final AppDetails app;

  const AppDetailsPage({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        border: null,
      ),
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context),
                      const SizedBox(height: 20),
                      _buildScreenshots(),
                      const SizedBox(height: 20),
                      _buildDescription(),
                      const SizedBox(height: 20),
                      _buildFeatures(),
                      const SizedBox(height: 20),
                      _buildInformation(),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(app.icon, width: 120, height: 120),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                app.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              Text(
                app.developer,
                style: TextStyle(
                  fontSize: 16,
                  color: CupertinoColors.white.withAlpha(153),
                ),
              ),
              const SizedBox(height: 12),
              CupertinoButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.circular(25),
                child: const Text(
                  'GET',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => _DownloadProgressDialog(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildScreenshots() {
    return SizedBox(
      height: 400,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: app.screenshots.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              app.screenshots[index],
              width: 200,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About this app',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          app.description,
          style: TextStyle(
            fontSize: 16,
            color: CupertinoColors.white.withAlpha(204),
          ),
        ),
      ],
    );
  }

  Widget _buildFeatures() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Features',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
          ),
        ),
        const SizedBox(height: 12),
        ...app.features.map((feature) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.checkmark_circle_fill,
                    color: CupertinoColors.activeBlue,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    feature,
                    style: TextStyle(
                      fontSize: 16,
                      color: CupertinoColors.white.withAlpha(204),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildInformation() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          _InfoRow(title: 'Size', value: app.size),
          _InfoRow(title: 'Age Rating', value: app.age),
          _InfoRow(
            title: 'Languages',
            value: app.languages.take(2).join(', ') +
                (app.languages.length > 2
                    ? ' +${app.languages.length - 2} more'
                    : ''),
          ),
          _InfoRow(
            title: 'In-App Purchases',
            value: app.inAppPurchases ? 'Yes' : 'No',
            showDivider: false,
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String title;
  final String value;
  final bool showDivider;

  const _InfoRow({
    required this.title,
    required this.value,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  color: CupertinoColors.white.withAlpha(153),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        if (showDivider)
          Divider(
            height: 1,
            color: CupertinoColors.black.withAlpha(26),
            indent: 16,
            endIndent: 16,
          ),
      ],
    );
  }
}

class _DownloadProgressDialog extends StatefulWidget {
  @override
  _DownloadProgressDialogState createState() => _DownloadProgressDialogState();
}

class _DownloadProgressDialogState extends State<_DownloadProgressDialog> {
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startDownload();
  }

  void _startDownload() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() {
          progress += 0.01;
          if (progress < 1.0) {
            _startDownload();
          } else {
            Navigator.pop(context);
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
        title: const Text('Downloading'),
        content: Column(children: [
          const SizedBox(height: 20),
          CupertinoActivityIndicator(),
          const SizedBox(height: 20),
          LinearProgressIndicator(
              value: progress, backgroundColor: CupertinoColors.systemGrey6)
        ]));
  }
}

class _AppCard extends StatelessWidget {
  final String appName;
  final String category;
  final double rating;
  final String reviews;
  final String icon;

  const _AppCard({
    required this.appName,
    required this.category,
    required this.rating,
    required this.reviews,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(icon, height: 60, width: 60),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appName,
                        style: const TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        category,
                        style: TextStyle(
                          color: CupertinoColors.white.withAlpha(153),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'GET',
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  CupertinoIcons.star_fill,
                  size: 12,
                  color: CupertinoColors.white.withAlpha(153),
                ),
                const SizedBox(width: 4),
                Text(
                  '($reviews)',
                  style: TextStyle(
                    color: CupertinoColors.white.withAlpha(153),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
