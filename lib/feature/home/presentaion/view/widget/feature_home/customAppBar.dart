import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 16.11,
            width: 75,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(AssetsData.logo))),
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context)
                    .push(AppRouter.KSearchView, extra: Books);
              },
              icon: const Icon(
                Icons.search,
                size: 25,
              ))
        ],
      ),
    );
  }
}
