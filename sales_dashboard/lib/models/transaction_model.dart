import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionModel {
  final String title;
  final String date;
  final String transactionId;
  final IconData icon;
  final TransactionCompletionStatus status;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.transactionId,
    required this.icon,
    required this.status,
  });

  static final transactionsList = [
    const TransactionModel(
      title: 'Premium T-Shirt',
      date: 'Jul 13th 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.shirt,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'Playstation 5',
      date: 'Jul 13th 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.gamepad,
      status: TransactionCompletionStatus.pending,
    ),
    const TransactionModel(
      title: 'Hoodie',
      date: 'Jul 2nd 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.shirtsinbulk,
      status: TransactionCompletionStatus.pending,
    ),
    const TransactionModel(
      title: 'Lotse',
      date: 'Jul 1nd 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.coffee,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'iPhone 15 Pro Max',
      date: 'June 25th 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.phone,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'Starbucks',
      date: 'June 20th 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.coffee,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'Tesla T-Shirt',
      date: 'June 15th 2024',
      transactionId: 'TRX9HJH2DJ30',
      // icon: FontAwesomeIcons.tshirt,
      icon: FontAwesomeIcons.shirt,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'Apple Watch',
      date: 'June 10th 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.apple,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'Asus Zenbook',
      date: 'June 5th 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.laptop,
      status: TransactionCompletionStatus.completed,
    ),
    const TransactionModel(
      title: 'KFC',
      date: 'June 1st 2024',
      transactionId: 'TRX9HJH2DJ30',
      icon: FontAwesomeIcons.burger,
      status: TransactionCompletionStatus.completed,
    ),
  ];
}

enum TransactionCompletionStatus {
  completed,
  pending,
}
