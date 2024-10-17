import 'package:bookshub/models/book_model.dart';
import 'package:bookshub/utils/utils_colors.dart';
import 'package:bookshub/widgets/all_books_widget_small.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCategory {
  final int id;
  final String name;
  final Widget icon;
  final BookColorSet colorSet;

  const BookCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.colorSet,
  });
}

List<BookCategory> dummyBooksCategory = [
  const BookCategory(
    id: 1,
    name: 'All',
    icon: AllBooksWidgetSmall(),
    colorSet: BookColorSet.categoryRed,
  ),
  const BookCategory(
    id: 2,
    name: 'Fiction',
    icon: Center(
        child: Icon(Icons.rocket, color: BookStoreColors.golden, size: 20)),
    colorSet: BookColorSet.categoryPurple,
  ),
  const BookCategory(
    id: 3,
    name: 'Kids',
    icon: Center(
        child: Icon(CupertinoIcons.group_solid,
            color: BookStoreColors.golden, size: 20)),
    colorSet: BookColorSet.categoryGreen,
  ),
  BookCategory(
    id: 4,
    name: 'Sci-Fi',
    icon: Center(
        child: Image.asset(
      'assets/images/sci_fi.png',
      width: 32,
      height: 32,
      fit: BoxFit.fill,
    )),
    colorSet: BookColorSet.categoryBlue,
  ),
  const BookCategory(
    id: 5,
    name: 'Love',
    icon: Center(
        child: Icon(CupertinoIcons.heart_circle_fill,
            color: BookStoreColors.golden, size: 20)),
    colorSet: BookColorSet.categoryRed,
  ),
  const BookCategory(
    id: 6,
    name: 'Action',
    icon: Center(
        child: Icon(Icons.movie_filter_rounded,
            color: BookStoreColors.golden, size: 20)),
    colorSet: BookColorSet.categoryBlue,
  ),
  const BookCategory(
    id: 7,
    name: 'New',
    icon: Center(
        child: Icon(Icons.fiber_new_outlined, color: Colors.white, size: 20)),
    colorSet: BookColorSet.categoryRed,
  ),
];
