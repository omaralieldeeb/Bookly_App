import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/rating.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_details/BookDetails.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_details/appbarcustom.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_details/bottomview.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_details/textsAndbottons.dart';
import 'package:flutter/material.dart';

class ThisBook extends StatelessWidget {
  const ThisBook({super.key, required this.book});
 final Books book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Appbarcustom(),
              const SizedBox(height: 25,),
              BookDetails(book: book,),
              const SizedBox(height: 16,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rating(),
                ],
              ),
              const SizedBox(height: 25,),
              TextsAndBottoms(book: book,),
              const SizedBox(height: 20,),
              const Text("You can also like", style: Styles.textStyle14,),
              const SizedBox(height: 17,),
              const BottomView(),
            ],
          ),
        )
      ],
    );
  }
}
