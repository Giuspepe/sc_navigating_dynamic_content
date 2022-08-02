import 'dart:ui';

import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(this.imageUrl, {super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Image.network(
          imageUrl,
          errorBuilder: (context, error, stackTrace) => const Text(
            'Couldn\'t load image\n😢',
            style: TextStyle(inherit: true, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          loadingBuilder: (context, child, loadingProgress) =>
              loadingProgress == null
                  ? child
                  : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
