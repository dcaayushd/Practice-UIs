// class User {
//   String username;
//   String pictureUrl;
//   String location;

//   User({
//     required this.username,
//     required this.pictureUrl,
//     required this.location,
//   });
// }

// class Destination {
//   final String name;
//   final String description;
//   final String url;
//   int temperature;
//   double rating;
//   bool isSaved;

//   Destination({
//     required this.name,
//     required this.description,
//     required this.url,
//     required this.temperature,
//     required this.rating,
//     this.isSaved = false,
//   });
// }

// class UserDestination extends Destination {
//   User author;

//   UserDestination({
//     String? name,
//     String? description,
//     String? url,
//     int? temperature,
//     double? rating,
//     bool? isSaved,
//     required this.author,
//   }) : super(
//           name: name!,
//           description: description!,
//           url: url!,
//           temperature: temperature!,
//           rating: rating!,
//           isSaved: isSaved!,
//         );
// }

// class RecommendedData {
//   static List<Destination> data = <Destination>[
//     Destination(
//       name: "Brazil",
//       description: "Lorem ipsum.",
//       url:
//           "https://images.pexels.com/photos/1804177/pexels-photo-1804177.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 34,
//       rating: 4.0,
//     ),
//     Destination(
//       name: "Greece",
//       description: "Quis autem.",
//       url:
//           "https://images.pexels.com/photos/1518500/pexels-photo-1518500.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 24,
//       rating: 5.0,
//     ),
//     Destination(
//       name: "Paris",
//       description: "At vero.",
//       url:
//           "https://images.pexels.com/photos/1461974/pexels-photo-1461974.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 19,
//       rating: 4.1,
//     ),
//     Destination(
//       name: "Hong Kong",
//       description: "At vero eos.",
//       url:
//           "https://images.pexels.com/photos/1738994/pexels-photo-1738994.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 23,
//       rating: 4.5,
//     ),
//   ];
// }

// class DestinationsData {
//   static List<UserDestination> data = <UserDestination>[
//     UserDestination(
//       name: "Tokyo",
//       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//       url:
//           "https://images.pexels.com/photos/1727627/pexels-photo-1727627.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 24,
//       rating: 4.1,
//       author: User(
//         username: "Saby",
//         pictureUrl:
//             "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//         location: "Tokyo, Japan",
//       ),
//     ),
//     UserDestination(
//       name: "Hawaii",
//       description: "Quis autem vel eum iure reprehenderit qui in ea voluptate.",
//       url:
//           "https://images.pexels.com/photos/1533729/pexels-photo-1533729.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 26,
//       rating: 4.9,
//       author: User(
//         username: "Mark",
//         pictureUrl:
//             "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//         location: "Hawaii, USA",
//       ),
//     ),
//     UserDestination(
//       name: "Iceland",
//       description: "At vero eos et accusamus et iusto odio .",
//       url:
//           "https://images.pexels.com/photos/1009136/pexels-photo-1009136.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//       temperature: 17,
//       rating: 4.7,
//       author: User(
//         username: "Sarah",
//         pictureUrl:
//             "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
//         location: "Reykjavík, Iceland",
//       ),
//     ),
//   ];
// }

// model.dart
class User {
  final String username;
  final String pictureUrl;
  final String location;

  User({
    required this.username,
    required this.pictureUrl,
    required this.location,
  });
}

class Destination {
  final String name;
  final String description;
  final String url;
  final int temperature;
  final double rating;
  final bool isSaved;

  Destination({
    required this.name,
    required this.description,
    required this.url,
    required this.temperature,
    required this.rating,
    this.isSaved = false,
  });
}

class UserDestination extends Destination {
  final User author;

  UserDestination({
    required String name,
    required String description,
    required String url,
    required int temperature,
    required double rating,
    bool isSaved = false,
    required this.author,
  }) : super(
          name: name,
          description: description,
          url: url,
          temperature: temperature,
          rating: rating,
          isSaved: isSaved,
        );
}

class DestinationsData {
  static final List<UserDestination> data = [
    UserDestination(
      name: "Tokyo",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      url: "https://images.pexels.com/photos/1727627/pexels-photo-1727627.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 24,
      rating: 4.1,
      author: User(
        username: "Saby",
        pictureUrl: "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
        location: "Tokyo, Japan",
      ),
    ),
    UserDestination(
      name: "Hawaii",
      description: "Quis autem vel eum iure reprehenderit qui in ea voluptate.",
      url: "https://images.pexels.com/photos/1533729/pexels-photo-1533729.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 26,
      rating: 4.9,
      author: User(
        username: "Mark",
        pictureUrl: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
        location: "Hawaii, USA",
      ),
    ),
    UserDestination(
      name: "Iceland",
      description: "At vero eos et accusamus et iusto odio.",
      url: "https://images.pexels.com/photos/1009136/pexels-photo-1009136.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 17,
      rating: 4.7,
      author: User(
        username: "Sarah",
        pictureUrl: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
        location: "Reykjavík, Iceland",
      ),
    ),
  ];
}


class RecommendedData {
  static List<Destination> data = <Destination>[
    Destination(
      name: "Brazil",
      description: "Lorem ipsum.",
      url:
          "https://images.pexels.com/photos/1804177/pexels-photo-1804177.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 34,
      rating: 4.0,
    ),
    Destination(
      name: "Greece",
      description: "Quis autem.",
      url:
          "https://images.pexels.com/photos/1518500/pexels-photo-1518500.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 24,
      rating: 5.0,
    ),
    Destination(
      name: "Paris",
      description: "At vero.",
      url:
          "https://images.pexels.com/photos/1461974/pexels-photo-1461974.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 19,
      rating: 4.1,
    ),
    Destination(
      name: "Hong Kong",
      description: "At vero eos.",
      url:
          "https://images.pexels.com/photos/1738994/pexels-photo-1738994.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
      temperature: 23,
      rating: 4.5,
    ),
  ];
}
