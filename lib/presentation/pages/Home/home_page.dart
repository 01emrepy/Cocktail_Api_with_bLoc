import 'package:flutter/material.dart';
import 'package:flutter_coctail_api_with_bloc/presentation/pages/Home/widget/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const HomePageBody(),
    );
  }
}
