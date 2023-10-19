import 'package:flutter/material.dart';

import 'package:bin_2_dec_app/widgets/input.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bin2Dec'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputBin2Dec(),
          ],
        ),
      ),
    );
  }
}
