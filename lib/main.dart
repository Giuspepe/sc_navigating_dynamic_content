import 'package:flutter/material.dart';
import 'package:sc_navigating_dynamic_content/init_dependency_injection.dart';
import 'package:sc_navigating_dynamic_content/presentation/app/app.dart';

void main() {
  initDependencyInjection();
  runApp(const App());
}
