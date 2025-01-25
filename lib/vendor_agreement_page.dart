import 'package:flutter/material.dart';

class VendorAgreementPage extends StatelessWidget {
  const VendorAgreementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vendor Agreement'),
      ),
      body: const Center(
        child: Text('This is the Vendor Agreement Page'),
      ),
    );
  }
}
