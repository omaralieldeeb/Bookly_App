import 'package:flutter/material.dart';

class AllBookShape extends StatelessWidget {
  final String imageUrl;
  const AllBookShape({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 224,
      width: 150,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
