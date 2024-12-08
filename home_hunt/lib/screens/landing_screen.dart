import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_hunt/custom/border_icon.dart';
import 'package:home_hunt/custom/option_button.dart';
import 'package:home_hunt/data/sample_data.dart';
import 'package:home_hunt/screens/detail_screen.dart';
import 'package:home_hunt/utils/constants.dart';
import 'package:home_hunt/utils/custom_functions.dart';
import 'package:home_hunt/utils/widget_functions.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: statusBarHeight),
                Padding(
                  padding: sidePadding,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderIcon(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.menu,
                          color: colorBlack,
                        ),
                      ),
                      BorderIcon(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.settings,
                          color: colorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(20),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "City",
                    style: themeData.textTheme.bodyMedium,
                  ),
                ),
                addVerticalSpace(10),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "San Francisco",
                    style: themeData.textTheme.displayLarge,
                  ),
                ),
                Padding(
                    padding: sidePadding,
                    child: const Divider(
                      height: 25,
                      color: colorGray,
                    )),
                addVerticalSpace(10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      "<\$220,000",
                      "For Sale",
                      "3-4 Beds",
                      ">1000 sqft"
                    ].map((filter) => ChoiceOption(text: filter)).toList(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: ListView.builder(
                        padding: const EdgeInsets.only(top: 10),
                        physics: const BouncingScrollPhysics(),
                        itemCount: reData.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: reData[index],
                          );
                        }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 40,
              width: size.width,
              child: Center(
                child: OptionButton(
                  text: "Map View",
                  icon: Icons.map_rounded,
                  width: size.width * 0.40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: colorGray.withAlpha(25),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: themeData.textTheme.headlineSmall,
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({
    super.key,
    this.itemData,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(
                  itemData: itemData,
                )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(itemData["image"])),
                const Positioned(
                    top: 15,
                    right: 15,
                    child: BorderIcon(
                        child: Icon(
                      Icons.favorite_border,
                      color: colorBlack,
                    )))
              ],
            ),
            addVerticalSpace(20),
            Row(
              children: [
                Text(
                  formatCurrency(itemData["amount"]),
                  style: themeData.textTheme.displayLarge,
                ),
                addHorizontalSpace(10),
                Text(
                  "${itemData["address"]}",
                  style: themeData.textTheme.bodyMedium,
                )
              ],
            ),
            addVerticalSpace(20),
            Text(
              "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
              style: themeData.textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}
