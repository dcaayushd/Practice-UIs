// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fastfoodapp/screens/product_item.dart';
import 'package:fastfoodapp/screens/product_screen.dart';
import 'package:fastfoodapp/utils/constants.dart';
import 'package:fastfoodapp/utils/widget_functions.dart';
import 'package:flutter/services.dart';

const productData = [
  {
    "image": "pizza.png",
    "name": "Pizza",
    "rest": "Maritine Star Restaurant",
    "rating": "4.5 (164)",
    "price": 20,
    "currency": "\$"
  },
  {
    "image": "burger.png",
    "name": "Burger",
    "rest": "Maritine Star Restaurant",
    "rating": "4.7 (199)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "fries.png",
    "name": "Fries",
    "rest": "Maritine Star Restaurant",
    "rating": "4.2 (101)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "hotdog.png",
    "name": "HotDog",
    "rest": "Maritine Star Restaurant",
    "rating": "3.9 (150)",
    "price": 15,
    "currency": "\$"
  },
];

const categories = [
  {"image": "salad.png", "name": "Salad"},
  {"image": "fastfood.png", "name": "Fast Food"},
  {"image": "desert.png", "name": "Desert"},
  {"image": "drinks.png", "name": "Drinks"},
  {"image": "drinks.png", "name": "Drinks"},
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  LandingScreenState createState() => LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        // statusBarColor: Colors.transparent,
        statusBarColor: Color(0xffE2F3D4),

        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          color: colorGreen,
                        ),
                        Image.asset("assets/images/tree_v.png"),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                            "assets/images/avatar.png"),
                                      )),
                                  addHorizontalSpace(20),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      "How Hungry are you Today?",
                                      style: textTheme.headlineSmall!
                                          .apply(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              TextField(
                                focusNode: _focusNode,
                                cursorColor: Colors.white,
                                cursorRadius: const Radius.circular(10.0),
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: "Search Food Items",
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: BorderSide.none),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    suffixIcon: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: const BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0))),
                                      child: const Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white24),
                              ),
                              addVerticalSpace(10),
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                  width: constraints.maxWidth,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          children: [
                            addVerticalSpace(constraints.maxWidth * 0.35),
                            Row(
                              children: [
                                Text(
                                  "Popular Foods",
                                  style: textTheme.headlineSmall,
                                ),
                                const Expanded(
                                  child: Center(),
                                ),
                                Text(
                                  "View All > ",
                                  style: textTheme.titleSmall!
                                      .apply(color: colorOrange),
                                ),
                                addHorizontalSpace(10),
                              ],
                            ),
                            addVerticalSpace(10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: productData
                                    .map((data) => InkWell(
                                          onTap: () {
                                            _focusNode.unfocus();
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductScreen(
                                                            productData:
                                                                data)));
                                          },
                                          child: ProductItem(
                                            width: constraints.maxWidth * 0.50,
                                            productData: data,
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: -40,
                          left: 0,
                          child: SizedBox(
                            width: constraints.maxWidth,
                            height: constraints.maxWidth * 0.35,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: categories
                                  .map((category) => Container(
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        width: constraints.maxWidth * 0.25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  "assets/images/${category['image']}"),
                                              addVerticalSpace(10),
                                              Text(
                                                "${category['name']}",
                                                style: textTheme.bodyMedium!
                                                    .apply(color: colorBlack),
                                              )
                                            ],
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
