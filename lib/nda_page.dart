import 'package:flutter/material.dart';

class NDAPage extends StatelessWidget {
  const NDAPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Non-Disclosure Agreement'),
      ),
      body: const Center(
        child: Text('This is the NDA Page'),
      ),
    );
  }
}
