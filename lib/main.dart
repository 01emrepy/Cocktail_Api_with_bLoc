import 'package:flutter/material.dart';
import 'package:flutter_coctail_api_with_bloc/injection.dart';
import 'package:flutter_coctail_api_with_bloc/presentation/core/app_widget.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
