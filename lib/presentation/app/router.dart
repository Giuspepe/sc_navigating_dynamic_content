part of 'app.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      name: 'search',
      path: '/',
      builder: (context, state) => const SearchScreen(),
      routes: [
        GoRoute(
          name: 'dynamicContent',
          path: ':dynamicContentId',
          builder: (context, state) {
            final pageId = state.queryParams['pageId'];
            return DynamicContentScreen(pageId: pageId);
          },
        ),
      ],
    ),
  ],
);
