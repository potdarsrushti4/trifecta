import 'package:flutter/material.dart';

class ExpirationRenewalTrackingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expiration & Renewal Tracking')),
      body: ListView.builder(
        itemCount: 5, // Update with actual data count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Agreement #$index'),
            subtitle: Text('Expires in 30 days'),
            trailing: IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                // Renew Agreement action
              },
            ),
          );
        },
      ),
    );
  }
}
