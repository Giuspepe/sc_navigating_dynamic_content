import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RetryButton extends ConsumerWidget {
  const RetryButton(this.provider, {super.key});

  final AutoDisposeFutureProvider provider;

  @override
  Widget build(BuildContext context, ref) {
    return ElevatedButton(
      onPressed: () => ref.refresh(provider),
      child: const Text(
        'An error occured.\nRetry?',
        textAlign: TextAlign.center,
      ),
    );
  }
}
