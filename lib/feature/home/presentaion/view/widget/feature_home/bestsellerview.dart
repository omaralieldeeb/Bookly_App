import 'package:bookly/feature/home/presentaion/view/widget/feature_home/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/feature/home/presentaion/controlller/bestSellerCubit/best_seller_cubit.dart';
import 'package:bookly/feature/home/presentaion/controlller/bestSellerCubit/best_seller_state.dart';

class BestSellerView extends StatelessWidget {
  const BestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerLoaded) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: bestSellerItem(
                  book: state.books[index],
                ),
              );
            },
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          );
        } else if (state is BestSellerError) {
          return Center(child: Text(state.error));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
