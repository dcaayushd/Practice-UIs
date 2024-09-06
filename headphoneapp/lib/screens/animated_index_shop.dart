import 'package:flutter/material.dart';
import 'package:headphoneapp/common/widgets.dart';

import '../data/data.dart';

class AnimatedProductScreen extends StatefulWidget {
  const AnimatedProductScreen({super.key});

  @override
  State<AnimatedProductScreen> createState() => _AnimatedProductScreenState();
}

class _AnimatedProductScreenState extends State<AnimatedProductScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideAnimationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _slideAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, -0.15), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: _slideAnimationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  int currentImageIndex = 0;
  final Product currentProduct = Product(
      title: "boAt Rockerz 450 with up to 15 Hours Playback Bluetooth Headset",
      images: [blackVariation, beigeVariation, blueVariation],
      relatedProducts: relatedProducts,
      description: description,
      highlights: highlights,
      priceBefore: 300,
      price: 199,
      rating: 4.8);

  @override
  void dispose() {
    _slideAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: appbar(),
        body: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: 350,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      )),
                  child: AnimatedBuilder(
                    animation: _slideAnimationController,
                    child: Center(
                        child: AnimatedSwitcher(
                      duration: const Duration(seconds: 2),
                      child: Image.asset(
                        currentProduct.images[currentImageIndex].images[0],
                        key: Key(currentImageIndex.toString()),
                      ),
                    )),
                    builder: (context, child) {
                      return SlideTransition(
                        position: _slideAnimation,
                        child: child,
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      ProductTitle(title: currentProduct.title),

                      /// Price and Rating
                      PriceAndRatingRow(
                          previousPrice: currentProduct.priceBefore,
                          price: currentProduct.price,
                          rating: currentProduct.rating),

                      /// Colors Box
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 4),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              " 3 Available Colors :  ",
                              textScaler: TextScaler.linear(1.3),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: currentProduct.images.length,
                                  itemBuilder: ((context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          currentImageIndex = index;
                                        });
                                      },
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        padding: const EdgeInsets.all(2),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.black),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: currentProduct
                                                .images[index].color,
                                          ),
                                        ),
                                      ),
                                    );
                                  })),
                            ),
                          ],
                        ),
                      ),

                      /// Divider 1
                      const DividerHeightTen(),

                      /// Description
                      Text(
                        currentProduct.description,
                        textScaler: const TextScaler.linear(1.2),
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),

                      /// Space
                      twentySizedBox(),

                      /// Divider
                      const DividerHeightTen(),

                      /// Highlights
                      ProductHighlights(highlights: currentProduct.highlights),

                      /// Space
                      twentySizedBox(),

                      /// Horizontal Scrollable
                      RelatedItemsBox(
                          relatedProducts: currentProduct.relatedProducts),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),

            /// bottom sticky widget for add to cart and but now buttons
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.white24)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Add To Card",
                            textScaler: TextScaler.linear(1.5),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.orange,
                          child: const Center(
                            child: Text(
                              "Buy Now",
                              textScaler: TextScaler.linear(1.5),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
