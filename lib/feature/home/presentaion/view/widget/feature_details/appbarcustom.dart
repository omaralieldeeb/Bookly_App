import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Appbarcustom extends StatelessWidget {
  const Appbarcustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context)
                  .pushReplacement(AppRouter.KHomePage, extra: Books);
            },
            icon: const Icon(Icons.arrow_back, size: 25),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 25,
              )),
        ],
      ),
    );
  }
}
