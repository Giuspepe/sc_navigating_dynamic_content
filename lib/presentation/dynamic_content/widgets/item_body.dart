import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/item_provider.dart';
import 'package:sc_navigating_dynamic_content/presentation/app/widgets/retry_button.dart';
import 'package:sc_navigating_dynamic_content/presentation/dynamic_content/widgets/image_container.dart';

class ItemBody extends ConsumerWidget {
  const ItemBody(
      {required this.pageId,
      required this.itemId,
      required this.onTappedItemLink,
      super.key});

  final String pageId;
  final String itemId;
  final ValueChanged<String> onTappedItemLink;

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(itemProvider(itemId));
    const padding = EdgeInsets.all(8);

    return Center(
      child: item.map(
        loading: (loading) => const CircularProgressIndicator(),
        error: (error) => RetryButton(itemProvider(itemId)),
        data: (itemData) {
          final item = itemData.value;
          final textTheme = Theme.of(context).textTheme;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: padding,
                  child: Text(
                    item.title,
                    style: textTheme.headlineLarge,
                  ),
                ),
                ImageContainer(item.imageUrl),
                Padding(
                  padding: padding,
                  child: MarkdownBody(
                    data: item.body,
                    onTapLink: (text, href, title) {
                      if (href != null && href.startsWith('openitem:')) {
                        final targetItemId = href.substring('openitem:'.length);
                        onTappedItemLink(targetItemId);
                      }
                    },
                  ),
                ),
                Padding(
                  padding: padding,
                  child: Text('Source', style: textTheme.headlineSmall),
                ),
                Padding(
                  padding: padding,
                  child: Text(item.source),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
