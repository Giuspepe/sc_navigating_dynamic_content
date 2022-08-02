import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sc_navigating_dynamic_content/application/dynamic_content/dynamic_content_id_provider.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter an id',
                  ),
                  onChanged: (value) =>
                      ref.read(dynamicContentIdProvider.notifier).state = value,
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      ref.read(dynamicContentIdProvider.notifier).state = value;
                      _navigateToContent(context, value);
                    }
                  }),
              Consumer(
                builder: (context, ref, child) {
                  final id = ref.watch(dynamicContentIdProvider);
                  return ElevatedButton(
                    onPressed: id.isNotEmpty
                        ? () => _navigateToContent(context, id)
                        : null,
                    child: child,
                  );
                },
                child: const Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToContent(BuildContext context, String id) => id.isNotEmpty
      ? context.goNamed('dynamicContent', params: {'dynamicContentId': id})
      : null;
}
