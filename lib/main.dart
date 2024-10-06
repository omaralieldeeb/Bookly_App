import 'package:bookly/constants.dart';
import 'package:bookly/core/apiService/service_locator.dart';
import 'package:bookly/feature/home/data/repo/home_repo_Imp.dart';
import 'package:bookly/feature/home/presentaion/controlller/allBooksCubit/all_books_cubit.dart';
import 'package:bookly/feature/home/presentaion/controlller/bestSellerCubit/best_seller_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
              AllBooksCubitCubit(getIt.get<HomeRepoImp>())..getAllBook(),
            ),
            BlocProvider(
              create: (context) =>
              BestSellerCubit(getIt.get<HomeRepoImp>())..getBestSeller(),
            ),
          ],
          child: MaterialApp.router(
            builder: DevicePreview.appBuilder,
            theme: ThemeData.dark().copyWith(
                 scaffoldBackgroundColor: KprimaryColor,
            )
          ),
        );
      },
    );
  }
}
