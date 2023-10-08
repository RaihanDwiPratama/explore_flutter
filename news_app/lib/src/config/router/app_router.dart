import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter {
  routers: [
    AutoRoute(page: BreakingNewsView, initial: true),
    AutoRoute(page: ArticleDetailsView),
    AutoRoute(page: SavedArticlesView),
  ]
}

class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();