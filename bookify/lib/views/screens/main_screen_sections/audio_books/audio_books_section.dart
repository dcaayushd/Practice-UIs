
import 'package:bookify/views/screens/main_screen_sections/audio_books/widgets/background_text.dart';
import 'package:bookify/views/screens/main_screen_sections/audio_books/widgets/book_description.dart';
import 'package:bookify/views/screens/main_screen_sections/audio_books/widgets/book_image.dart';
import 'package:bookify/views/screens/main_screen_sections/audio_books/widgets/books_scroll_list_background_clipper.dart';
import 'package:bookify/views/screens/main_screen_sections/audio_books/widgets/headphone_icons.dart';
import 'package:bookify/views/screens/main_screen_sections/audio_books/widgets/small_details.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../data/data.dart';
import '../../../theme/colors.dart';
import '../../book_playing/book_playing_screen.dart';
import 'widgets/name_and_rating.dart';

const double pageViewPoint = 0.50;

class AudioBooksSection extends StatefulWidget {
  const AudioBooksSection({super.key});

  @override
  State<AudioBooksSection> createState() => _AudioBooksSectionState();
}

class _AudioBooksSectionState extends State<AudioBooksSection> {
  ValueNotifier<int> currentIndex = ValueNotifier(0);
  ValueNotifier<double> pageValue = ValueNotifier(0.0);
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: pageViewPoint)
      ..addListener(() {
        pageValue.value = pageController.page ?? 0.0;
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white60, Colors.white30, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: AnnotatedRegion(
          value: const SystemUiOverlayStyle(statusBarColor: mainColor),
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    child: Stack(
                  children: [
                    ClipPath(
                      clipper: ContainerClipper(),
                      child: Container(
                        height: h * 0.65,
                        color: mainColor,
                        width: w,
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(IconsaxOutline.arrow_left_2,
                                      color: Colors.black, size: 30),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Icon(IconsaxOutline.bookmark_2,
                                      color: Colors.black, size: 25),
                                )
                              ],
                            ),
                            Expanded(
                              child: AnimatedBuilder(
                                animation: pageController,
                                builder: (context, child) {
                                  return Stack(
                                    children: [
                                      Positioned.fill(
                                          top: -40,
                                          bottom: -10,
                                          left: 20,
                                          right: 20,
                                          child: Column(
                                            children: [
                                              for (int j = 0;
                                                  j < bookNamesBGLists[currentIndex.value].length;
                                                  j++) ...[
                                                BackGroundText(
                                                    text: bookNamesBGLists[currentIndex.value][j])
                                              ],
                                            ],
                                          )),
                                      Positioned.fill(
                                        child: ValueListenableBuilder(
                                          valueListenable: pageValue,
                                          builder: (context, value, child) {
                                            return PageView.builder(
                                              controller: pageController,
                                              itemCount: allBooks.length,
                                              physics: const BouncingScrollPhysics(),
                                              onPageChanged: (value) {
                                                currentIndex.value = value;
                                              },
                                              itemBuilder: (context, index) {
                                                final book = allBooks[index];
                                                final scale = 1 - (0.2 * (value - index).abs());
                                                final opacity = ((1 - (value - index).abs()) + 0.6)
                                                    .clamp(0.0, 1.0);
                                                return Transform.scale(
                                                  scale: scale,
                                                  child: Opacity(
                                                    opacity: opacity,
                                                    child: Center(
                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                            flex: 5,
                                                            child: Hero(
                                                                tag: book.image,
                                                                child:
                                                                    BookImage(image: book.image)),
                                                          ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: index != currentIndex.value
                                                                ? Container()
                                                                : BookNameAndRating(book: book),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),

                            /// Headphone Icon
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BookPlayingScreen(
                                    book: allBooks[currentIndex.value],
                                  ),
                                ));
                              },
                              child: const HeadphoneIcon(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                ValueListenableBuilder(
                  valueListenable: currentIndex,
                  builder: (context, value, child) {
                    return Column(
                      children: [
                        SizedBox(
                          height: h * .09,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BookDetailWIdget(
                                  title: "Hours", value: allBooks[currentIndex.value].duration),
                              BookDetailWIdget(
                                  title: "Author", value: allBooks[currentIndex.value].author),
                              BookDetailWIdget(
                                  title: "Genre", value: allBooks[currentIndex.value].genre),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: OverViewWidget(text: allBooks[currentIndex.value].overview),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: h * .1)
              ],
            ),
          )),
        ),
      ),
    );
  }
}

