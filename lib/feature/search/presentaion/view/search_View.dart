import 'package:bookly/feature/search/presentaion/view/widget/search_design.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchDesign(),
    );
  }
}
