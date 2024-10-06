import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widget/rating.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:bookly/feature/home/presentaion/view/widget/feature_home/allbookShape.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class bestSellerItem extends StatelessWidget {
  final Books book;
  const bestSellerItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.KHomeDetails,
          extra: book, // Pass the BookModel here
        );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AllBookShape(
                imageUrl:
                '${book.volumeInfo?.imageLinks?.thumbnail}??${AssetsData.nullImage}'),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    '${book.volumeInfo!.title}',
                    style:
                    Styles.textStyle20.copyWith(fontFamily: KGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 230,
                  child: Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.textStyle14.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99€',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 44.3,
                    ),
                    const Rating(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
