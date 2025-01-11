// The part directive must be after imports
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../features/auth/domain/entities/user.dart';
import '../features/dashboard/domain/entities/arena.dart';
import '../features/dashboard/presentation/pages/arena_details_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/register_page.dart';
import '../features/dashboard/presentation/pages/main_dashboard_page.dart';
import '../features/dashboard/presentation/pages/about_app_page.dart';
import '../features/dashboard/presentation/pages/edit_profile_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: MainDashboardRoute.page),
        AutoRoute(page: ArenaDetailsRoute.page),
        AutoRoute(page: AboutAppRoute.page),
        AutoRoute(page: EditProfileRoute.page),
      ];
}
