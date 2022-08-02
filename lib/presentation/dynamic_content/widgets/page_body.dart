import 'package:flutter/material.dart' hide Page;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sc_navigating_dynamic_content/domain/dynamic_content/page.dart';
import 'package:sc_navigating_dynamic_content/presentation/dynamic_content/widgets/item_body.dart';
import 'package:sc_navigating_dynamic_content/presentation/dynamic_content/widgets/item_chips_scroll_view.dart';

class PageBody extends StatefulWidget {
  const PageBody({required this.page, Key? key}) : super(key: key);
  final Page page;

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody>
    with AutomaticKeepAliveClientMixin {
  late final List<String> _itemIds = [widget.page.itemId];
  late int _currentIndex = _itemIds.length - 1;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: IndexedStack(
            index: _currentIndex,
            children: [
              for (int i = 0; i < _itemIds.length; i++)
                ItemBody(
                  pageId: widget.page.id,
                  itemId: _itemIds[i],
                  onTappedItemLink: _onTappedItemLink,
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: ItemChipsScrollView(
            itemIds: _itemIds,
            currentIndex: _currentIndex,
            onPressedItemChip: _onPressedItemChip,
            onDeletedItemChip: _onDeletedItemChip,
          ),
        )
      ],
    );
  }

  void _onTappedItemLink(String itemId) {
    setState(() {
      if (!_itemIds.contains(itemId)) {
        _itemIds.add(itemId);
      }
      _currentIndex = _itemIds.indexOf(itemId);
    });
  }

  void _onPressedItemChip(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onDeletedItemChip(int index) {
    setState(() {
      _itemIds.removeAt(index);
      _currentIndex = (_currentIndex - 1).clamp(0, _itemIds.length - 1);
    });
  }
}
