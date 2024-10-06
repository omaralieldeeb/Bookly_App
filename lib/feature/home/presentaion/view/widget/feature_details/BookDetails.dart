import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:bookly/feature/home/presentaion/controlller/bestSellerCubit/best_seller_cubit.dart';
import 'package:bookly/feature/home/presentaion/controlller/bestSellerCubit/best_seller_state.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_home/allbookShape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/styles.dart';
class BookDetails extends StatelessWidget {
  final Books book;

  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if(state is BestSellerLoaded){
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .20),
                child:   AllBookShape(imageUrl:'${book.volumeInfo?.imageLinks?.thumbnail}??${AssetsData.nullImage}'),
              ),
              const SizedBox(
                height: 43,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "${book.volumeInfo?.title}",
                  style: Styles.textStyle30,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "${book.volumeInfo?.authors![0]}",
                style:
                Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          );
        }
        else if(state is BestSellerError){
          return Text(state.error);
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
