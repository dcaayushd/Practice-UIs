import 'package:bookshub/models/book_model.dart';
import 'package:bookshub/utils/utils_colors.dart';
import 'package:bookshub/widgets/book_widget_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayPageView extends StatelessWidget {
  final BookModel book;
  const PlayPageView({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 28,
        right: 28,
        top: 75,
        bottom: 100,
      ),
      decoration: BoxDecoration(
        color: BookStoreColors.veryLightSand,
        borderRadius: BorderRadius.circular(25),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 40),
          BookWidgetCategory(
            bookLeftVerticalStrip: book.colorSet.bookLeftVerticalStrip,
            bookBottomHorizontalStrip: book.colorSet.bookBottomHorizontalStrip,
            bookPagesColor: book.colorSet.bookPagesColor,
            showBookMark: false,
            bookCover: Image.asset(
              book.assetPath,
              fit: BoxFit.fill,
            ),
            width: 200,
          ),
          const SizedBox(height: 35),
          Image.asset(
            'assets/images/audio_visualizer.png',
            width: 290,
            fit: BoxFit.fitWidth,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12:22',
                  style: TextStyle(
                    color: BookStoreColors.mediumRed,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '-05:20',
                  style: TextStyle(
                    color: BookStoreColors.mediumRed,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            book.name,
            style: const TextStyle(
              color: BookStoreColors.darkBrown,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            book.author,
            style: const TextStyle(
              color: BookStoreColors.mediumRed,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CupertinoIcons.repeat,
                  color: BookStoreColors.darkBrown.withOpacity(.5),
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.backward_end,
                  color: BookStoreColors.darkBrown.withOpacity(.5),
                  size: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        BookStoreColors.mediumRed,
                        BookStoreColors.lightRed,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 14, left: 15, right: 13),
                  child: const Icon(
                    CupertinoIcons.play_arrow_solid,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Icon(
                  CupertinoIcons.forward_end,
                  color: BookStoreColors.darkBrown.withOpacity(.5),
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.share,
                  color: BookStoreColors.darkBrown.withOpacity(.5),
                  size: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
