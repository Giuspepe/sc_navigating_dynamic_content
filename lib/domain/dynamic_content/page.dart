import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
class Page with _$Page {
  const factory Page({
    required String id,
    required String title,
    required String itemId,
  }) = _Page;
}
