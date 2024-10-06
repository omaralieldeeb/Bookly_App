import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:bookly/feature/home/presentaion/view/home%20detailsthis.dart';
import 'package:bookly/feature/home/presentaion/view/homeScreen.dart';
import 'package:bookly/feature/search/presentaion/view/search_View.dart';
import 'package:bookly/feature/splash/presentaion/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeDetails = '/HomeDetailsThis';
  static const KHomePage = '/HomePage';
  static const KSearchView = '/SearchView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: KSearchView, builder: (context, state) => SearchView()),
    GoRoute(
      path: KHomeDetails,
      builder: (context, state) {
        final book = state.extra as Books;
        return HomeDetailsThis(book: book,);
      },
    ),
    GoRoute(path: KHomePage, builder: (context, state) => HomePage()),
  ]);
}
