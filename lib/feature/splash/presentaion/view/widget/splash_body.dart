import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationBuild();
    getToHomeScreen();
  }

  animationBuild() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    slidinganimation = Tween<Offset>(begin: Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  getToHomeScreen() {
    Future.delayed(Duration(seconds: 7), () {
      GoRouter.of(context).push(AppRouter.KHomePage, extra: Books);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        Center(
            child: SlideTransition(
                position: slidinganimation,
                child: Text(
                  "Read Free Books",
                  style: Styles.textStyle20,
                )))
      ],
    );
  }
}
