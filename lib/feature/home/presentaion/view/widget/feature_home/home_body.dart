import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_home/allbookview.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_home/customAppBar.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_home/bestsellerview.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              SizedBox(height: 30,),
              AllBookView(),
              SizedBox(height: 40,),
              Text("Best Seller", style: Styles.textStyle18,),
              SizedBox(height: 20,),
              BestSellerView(),
            ],
          ),
        )
      ],
    );
  }
}
/*
SliverToBoxAdapter(child: CustomAppbar()),
        SliverToBoxAdapter(child: SizedBox(height: 30,)),
        AllBookView(),
        SliverToBoxAdapter(child: SizedBox(height: 40,)),
        SliverToBoxAdapter(child: Text("Best Seller", style: Styles.textStyle18,)),
        SliverToBoxAdapter(child: SizedBox(height: 20,)),
        BestSellerView(),
 */