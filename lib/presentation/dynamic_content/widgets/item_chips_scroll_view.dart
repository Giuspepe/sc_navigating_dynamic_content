import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/item_provider.dart';

class ItemChipsScrollView extends StatelessWidget {
  const ItemChipsScrollView({
    required this.itemIds,
    required this.currentIndex,
    required this.onPressedItemChip,
    required this.onDeletedItemChip,
    super.key,
  });

  final List<String> itemIds;
  final int currentIndex;

  final ValueChanged<int> onPressedItemChip;
  final ValueChanged<int> onDeletedItemChip;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int itemIndex = 0; itemIndex < itemIds.length; itemIndex++)
            Padding(
              padding: itemIndex == 0
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(left: 8.0),
              child: Consumer(
                builder: (context, ref, _) => ref
                    .watch(itemProvider(itemIds[itemIndex]))
                    .maybeMap(
                      orElse: () =>
                          const InputChip(label: CircularProgressIndicator()),
                      data: (data) => InputChip(
                        backgroundColor: itemIndex == currentIndex
                            ? Colors.blue
                            : Colors.grey,
                        avatar: CircleAvatar(
                          backgroundImage: NetworkImage(data.value.imageUrl),
                        ),
                        label: Text(data.value.title),
                        onPressed: () => onPressedItemChip(itemIndex),
                        onDeleted: itemIndex == 0
                            ? null
                            : () => onDeletedItemChip(itemIndex),
                      ),
                    ),
              ),
            )
        ],
      ),
    );
  }
}
