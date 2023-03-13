import 'package:flutter/material.dart';

class Prod extends StatelessWidget {
  const Prod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prod'),
      ),
      body: const Center(
        child: Text('Prod'),
      ),
    );
  }
}
