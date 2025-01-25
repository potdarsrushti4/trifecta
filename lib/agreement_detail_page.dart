import 'package:flutter/material.dart';

class AgreementDetailPage extends StatelessWidget {
  final String agreementId;

  AgreementDetailPage({required this.agreementId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agreement Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Agreement #$agreementId'),
            SizedBox(height: 20),
            Text('Terms: [Agreement terms here]'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Sign Agreement action
              },
              child: Text('Sign Agreement'),
            ),
          ],
        ),
      ),
    );
  }
}
