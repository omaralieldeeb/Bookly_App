import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_details/this_book.dart';
import 'package:flutter/material.dart';

class HomeDetailsThis extends StatelessWidget {
  const HomeDetailsThis({super.key, required this.book});
  final Books book;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ThisBook(book: book,),
    ));
  }
}
