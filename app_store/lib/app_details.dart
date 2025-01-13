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
  final String? price;

  const AppDetails({
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
    this.price,
  });
}

class AppData {
  static const games = {
    'clashRoyale': AppDetails(
      name: 'Clash Royale',
      category: 'Strategy',
      developer: 'Supercell',
      rating: 4.6,
      reviews: '12M',
      description: 'Enter the Arena! Build your battle deck and outsmart the enemy in fast-paced battles. From the creators of CLASH OF CLANS comes a real-time multiplayer battle game starring your favorite Clash characters and more.',
      icon: 'assets/cr.png',
      screenshots: ['assets/cr_1.png', 'assets/cr_2.png', 'assets/cr_3.png'],
      features: ['Real-Time Battles', 'Card Collection', 'Team Play', 'Global Tournaments', 'Clan Wars'],
      size: '221.3 MB',
      age: '9+',
      languages: ['English', 'French', 'German', 'Italian', 'Japanese', 'Korean', 'Chinese'],
      inAppPurchases: true,
    ),
    'pokemon': AppDetails(
      name: 'Pokémon GO',
      category: 'Adventure',
      developer: 'Niantic, Inc.',
      rating: 4.4,
      reviews: '15M',
      description: 'Join Trainers across the globe who are discovering Pokémon as they explore the world around them. Travel between the real world and the virtual world of Pokémon with Pokémon GO!',
      icon: 'assets/poke.png',
      screenshots: ['assets/poke_1.png', 'assets/poke_2.png', 'assets/poke_3.png'],
      features: ['AR Gaming', 'Real-World Exploration', 'Pokémon Collection', 'Team Battles', 'Trading'],
      size: '356.8 MB',
      age: '9+',
      languages: ['English', 'French', 'German', 'Italian', 'Japanese', 'Spanish', 'Portuguese'],
      inAppPurchases: true,
    ),
    'angryBirds': AppDetails(
      name: 'Angry Birds 2',
      category: 'Puzzle',
      developer: 'Rovio Entertainment',
      rating: 4.5,
      reviews: '8.2M',
      description: 'The Angry Birds are back in the sequel to the biggest mobile game of all time! Angry Birds 2 starts a new era of slingshot gameplay with super stunning graphics, challenging multi-stage levels, scheming boss pigs and even more destruction.',
      icon: 'assets/ab.png',
      screenshots: ['assets/ab_1.png', 'assets/ab_2.png', 'assets/ab_3.png'],
      features: ['Multi-Stage Levels', 'Boss Battles', 'Arena Challenges', 'Tower of Fortune', 'Daily Challenges'],
      size: '178.5 MB',
      age: '9+',
      languages: ['English', 'French', 'German', 'Spanish', 'Italian', 'Russian', 'Portuguese'],
      inAppPurchases: true,
    ),
  };

  static const messaging = {
    'whatsapp': AppDetails(
      name: 'WhatsApp',
      category: 'Social Networking',
      developer: 'WhatsApp Inc.',
      rating: 4.8,
      reviews: '12M',
      description: 'WhatsApp Messenger is a FREE messaging app available for iPhone and other smartphones. WhatsApp uses your phone\'s Internet connection to let you message and call friends and family.',
      icon: 'assets/wa.png',
      screenshots: ['assets/wa_1.png', 'assets/wa_2.png', 'assets/wa_3.png'],
      features: ['Free Messages', 'Voice Calls', 'Video Calls', 'Group Chats', 'End-to-End Encryption'],
      size: '178.2 MB',
      age: '12+',
      languages: ['English', 'Spanish', 'Portuguese', 'Arabic', 'Hindi', 'French', 'German'],
      inAppPurchases: false,
    ),
    'telegram': AppDetails(
      name: 'Telegram',
      category: 'Social Networking',
      developer: 'Telegram FZ-LLC',
      rating: 4.7,
      reviews: '8.2M',
      description: 'Telegram is a messaging app with a focus on speed and security. It\'s super-fast, simple, and free.',
      icon: 'assets/telegram.png',
      screenshots: ['assets/tg_1.png', 'assets/tg_2.png', 'assets/tg_3.png'],
      features: ['Secure Messaging', 'Channels', 'Large Groups', 'File Sharing', 'Secret Chats'],
      size: '156.8 MB',
      age: '17+',
      languages: ['English', 'Russian', 'Spanish', 'German', 'Italian', 'French', 'Portuguese'],
      inAppPurchases: false,
    ),
    'signal': AppDetails(
      name: 'Signal',
      category: 'Social Networking',
      developer: 'Signal Messenger LLC',
      rating: 4.6,
      reviews: '3.1M',
      description: 'Signal is a messaging app focused on privacy. Send high-quality private messages, make crystal-clear calls, and enjoy encrypted video chat.',
      icon: 'assets/signal.png',
      screenshots: ['assets/sg_1.png', 'assets/sg_2.png', 'assets/sg_3.png'],
      features: ['End-to-End Encryption', 'Private Calls', 'Disappearing Messages', 'Group Chats', 'Voice Messages'],
      size: '134.5 MB',
      age: '17+',
      languages: ['English', 'French', 'German', 'Japanese', 'Spanish', 'Portuguese', 'Russian'],
      inAppPurchases: false,
    ),
  };

  static const arcade = {
    'nba': AppDetails(
      name: 'NBA 2K24 Arcade',
      category: 'Sports',
      developer: '2K Games',
      rating: 4.3,
      reviews: '2.5K',
      description: 'Experience the thrill of authentic NBA basketball on Apple Arcade. NBA 2K24 Arcade Edition delivers an all-new premium mobile basketball experience.',
      icon: 'assets/nba.png',
      screenshots: ['assets/nba_1.png', 'assets/nba_2.png', 'assets/nba_3.png'],
      features: ['Realistic Graphics', '5v5 NBA Action', 'MyCAREER Mode', 'Online Multiplayer', 'Custom Teams'],
      size: '3.2 GB',
      age: '4+',
      languages: ['English', 'French', 'Italian', 'German', 'Spanish', 'Japanese', 'Chinese'],
      inAppPurchases: false,
    ),
  };
}