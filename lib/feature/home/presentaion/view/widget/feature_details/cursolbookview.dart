import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/home/presentaion/controlller/allBooksCubit/all_books_cubit.dart';
import 'package:bookly/feature/home/presentaion/controlller/allBooksCubit/all_books_cubit_state.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_home/allbookShape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CursolBookView extends StatelessWidget {
  const CursolBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubitCubit, AllBooksCubitState>(
        builder: (context, state) {
          if (state is AllBooksLoaded) {
            return SizedBox(
                height: 112,
                width: 70,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AllBookShape(imageUrl: "${state.books[index].volumeInfo?.imageLinks?.smallThumbnail}??${AssetsData.nullImage}"),
                    );
                  },
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                )
            );
          } else if (state is AllBooksError) {
            return Center(child: Text(state.error));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
