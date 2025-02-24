// import 'package:flutter/material.dart';
// import '../data/model.dart';

// class Recommended extends StatelessWidget {
//   final _data = RecommendedData.data;

//   Recommended({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         physics: ClampingScrollPhysics(),
//         itemCount: _data.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             margin: EdgeInsets.only(top: 15, bottom: 15, left: 20),
//             width: 135,
//             height: 110,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//               boxShadow: <BoxShadow>[
//                 BoxShadow(
//                   blurRadius: 7,
//                   spreadRadius: 3,
//                   color: Colors.blue[900]!.withOpacity(0.1),
//                 )
//               ],
//             ),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 120.0,
//                   child: Stack(
//                     children: <Widget>[
//                       ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                         ),
//                         child: Image(
//                           height: double.infinity,
//                           width: double.infinity,
//                           fit: BoxFit.cover,
//                           image: NetworkImage(_data[index].url),
//                         ),
//                       ),
//                       Positioned(
//                         left: 12,
//                         top: 12,
//                         child: Text(
//                           "${_data[index].temperature.toInt().toString()}ºC",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         right: 12,
//                         top: 12,
//                         child: Icon(
//                           Icons.bookmark_border,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         _data[index].name,
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Text(
//                         _data[index].description,
//                         style: TextStyle(fontSize: 10, color: Colors.black54),
//                       ),
//                       Container(height: 10),
//                       Row(
//                         children: <Widget>[
//                           Rating(_data[index].rating),
//                           Expanded(child: Container()),
//                           Text(
//                             _data[index].rating.toString(),
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.blue[300],
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class Rating extends StatelessWidget {
//   double _rating;
//   List<Widget> _stars = <Widget>[];

//   Rating(double rating, {super.key}) {
//     this._rating = rating;

//     double decimal = (_rating - _rating.floor());
//     for (int i = 0; i < _rating.floor(); i++) {
//       _stars.add(Icon(
//         Icons.star,
//         color: Colors.blue[300],
//         size: 12,
//       ));
//     }
//     if (decimal >= 0.3 && decimal <= 0.7)
//       _stars.add(Icon(
//         Icons.star_half,
//         color: Colors.blue[300],
//         size: 12,
//       ));
//     else if (decimal > 0.7)
//       _stars.add(Icon(
//         Icons.star,
//         color: Colors.blue[300],
//         size: 12,
//       ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: _stars,
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../data/model.dart';

class Recommended extends StatelessWidget {
  final List<Destination> _data = RecommendedData.data;

  Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15, left: 20),
            width: 135,
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 7,
                  spreadRadius: 3,
                  color: Colors.blue[900]!.withValues(alpha: 0.1),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 120.0,
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image(
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          image: NetworkImage(_data[index].url),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        top: 12,
                        child: Text(
                          "${_data[index].temperature.toInt()}ºC",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 12,
                        top: 12,
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _data[index].name,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        _data[index].description,
                        style: const TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                      Container(height: 10),
                      Row(
                        children: <Widget>[
                          Rating(rating: _data[index].rating),
                          const Expanded(child: SizedBox()),
                          Text(
                            _data[index].rating.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue[300],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class Rating extends StatelessWidget {
  final double rating;
  final List<Widget> stars;

  Rating({required this.rating, super.key}) : stars = _buildStars(rating);

  static List<Widget> _buildStars(double rating) {
    final List<Widget> stars = <Widget>[];
    final double decimal = (rating - rating.floor());

    for (int i = 0; i < rating.floor(); i++) {
      stars.add(Icon(
        Icons.star,
        color: Colors.blue[300],
        size: 12,
      ));
    }

    if (decimal >= 0.3 && decimal <= 0.7) {
      stars.add(Icon(
        Icons.star_half,
        color: Colors.blue[300],
        size: 12,
      ));
    } else if (decimal > 0.7) {
      stars.add(Icon(
        Icons.star,
        color: Colors.blue[300],
        size: 12,
      ));
    }

    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: stars);
  }
}