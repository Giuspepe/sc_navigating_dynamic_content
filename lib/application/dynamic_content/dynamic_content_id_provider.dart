import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides id for fetching dynamic content
///
/// Is changed by the user when he/she edits the search field
final dynamicContentIdProvider = StateProvider<String>((ref) => '');
