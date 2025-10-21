import 'package:evently_app/core/route/router_name.dart';
import 'package:evently_app/features/add_event/add_event.dart';
import 'package:evently_app/features/auth/forget_pass/forget_pass_screen.dart';
import 'package:evently_app/features/auth/login/login_screen.dart';
import 'package:evently_app/features/auth/register/register_screen.dart';
import 'package:evently_app/features/main_layout/main_layout.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: RouterName.mainLayout,
    routes: <RouteBase>[
      GoRoute(
        path: RouterName.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouterName.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: RouterName.forgetPass,
        builder: (context, state) => const ForgetPassScreen(),
      ),
      GoRoute(
        path: RouterName.mainLayout,
        builder: (context, state) => const MainLayout(),
      ),
      GoRoute(
        path: RouterName.addEvent,
        builder: (context, state) => const AddEvent(),
      ),
    ],
  );
}
