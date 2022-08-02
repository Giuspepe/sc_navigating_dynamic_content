import 'package:flutter/material.dart' hide Page;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_id_provider.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_provider.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/dynamic_content.dart';
import 'package:sc_navigating_dynamic_content/presentation/app/widgets/retry_button.dart';
import 'package:sc_navigating_dynamic_content/presentation/dynamic_content/widgets/page_body.dart';

class DynamicContentScreen extends ConsumerWidget {
  const DynamicContentScreen({
    required this.pageId,
    super.key,
  });

  final String? pageId;

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(dynamicContentProvider).map(
          loading: (loading) => Scaffold(
              appBar: AppBar(title: Text(ref.watch(dynamicContentIdProvider))),
              body: const Center(child: CircularProgressIndicator())),
          error: (error) => Scaffold(
              appBar: AppBar(title: Text(ref.watch(dynamicContentIdProvider))),
              body: Center(child: RetryButton(dynamicContentProvider))),
          data: (dynamicContent) => PageTabsScreen(
            currentPageId: pageId ?? dynamicContent.value.pages.first.id,
            dynamicContent: dynamicContent.value,
          ),
        );
  }
}

class PageTabsScreen extends StatefulWidget {
  PageTabsScreen({
    required String currentPageId,
    required this.dynamicContent,
    super.key,
  }) : index = dynamicContent.pages.indexWhere(
          (page) => page.id == currentPageId,
        );

  final DynamicContent dynamicContent;
  final int index;

  @override
  PageTabsScreenState createState() => PageTabsScreenState();
}

class PageTabsScreenState extends State<PageTabsScreen>
    with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: widget.dynamicContent.pages.length,
      vsync: this,
      initialIndex: widget.index,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(PageTabsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.index;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.dynamicContent.id),
          bottom: TabBar(
            controller: _controller,
            tabs: [
              for (final page in widget.dynamicContent.pages)
                Tab(text: page.title)
            ],
            onTap: (index) => context.goNamed(
              'dynamicContent',
              params: {
                'dynamicContentId': widget.dynamicContent.id,
              },
              queryParams: {
                'pageId': widget.dynamicContent.pages[index].id,
              },
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            controller: _controller,
            children: [
              for (final page in widget.dynamicContent.pages)
                PageBody(page: page)
            ],
          ),
        ),
      );
}
