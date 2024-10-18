import 'package:bookshub/utils/utils_colors.dart';
import 'package:bookshub/widgets/all_books_widget.dart';
import 'package:flutter/material.dart';

class LandingPageView extends StatelessWidget {
  final Function(int) openTab;
  const LandingPageView({required this.openTab, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 28,
        right: 28,
        top: 75,
        bottom: 100,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Container(
              height: 675,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/gradient.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 90,
                      color: BookStoreColors.pillarBackgroundColor,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 80,
                            child: Image.asset(
                              'assets/images/pillar.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Top 50 Classic books',
                                  style: TextStyle(
                                    color: BookStoreColors.darkBrown,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Discover the most influential books in classic literature.',
                                  style: TextStyle(
                                    color: BookStoreColors.darkBrown
                                        .withOpacity(.8),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: Text(
                              '2023 year 100 most famous Bestsellers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: Text(
                              'List of the most famous books of the year based on customers and the number of sales.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            openTab(1);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: BookStoreColors.mediumRed,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 45,
                                vertical: 10,
                              ),
                              child: const Text(
                                'View all',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const AllBooksWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
