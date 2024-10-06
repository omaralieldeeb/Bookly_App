import 'package:bookly/feature/home/presentaion/view/widget/feature_home/bestsellerview.dart';
import 'package:bookly/feature/search/presentaion/view/widget/search_body.dart';
import 'package:flutter/material.dart';

class SearchDesign extends StatelessWidget {
  const SearchDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(height: 20,)),
        SliverToBoxAdapter(child: SearchBody()),
      ],
    );
  }
}
