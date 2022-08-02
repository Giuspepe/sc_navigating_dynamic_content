import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DynamicContentScreen extends StatelessWidget {
  const DynamicContentScreen({this.pageId, super.key});

  final String? pageId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('dynamic content screen, id: $pageId'));
  }
}
