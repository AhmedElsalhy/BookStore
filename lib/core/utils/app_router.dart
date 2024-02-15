import 'package:book_store/Features/home/presentation/views/book_details_view.dart';
import 'package:book_store/Features/home/presentation/views/home_view.dart';
import 'package:book_store/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
