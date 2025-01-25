import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agreement Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AgreementRepositoryPage(),
      routes: {
        AgreementRepositoryPage.routeName: (context) => const AgreementRepositoryPage(),
        AgreementDetailPage.routeName: (context) => const AgreementDetailPage(),
      },
    );
  }
}

class AgreementRepositoryPage extends StatelessWidget {
  const AgreementRepositoryPage({Key? key}) : super(key: key);

  static const routeName = '/agreement-repository';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agreement Repository'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Search Agreements'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Update with actual data count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Agreement #$index'),
                  subtitle: const Text('Category: Client Contract'),
                  onTap: () {
                    Navigator.pushNamed(context, AgreementDetailPage.routeName);
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new agreement action
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AgreementDetailPage extends StatelessWidget {
  const AgreementDetailPage({Key? key}) : super(key: key);

  static const routeName = '/agreement-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agreement Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Agreement #1'),
            const SizedBox(height: 20),
            const Text('Terms: [Agreement terms here]'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement sign agreement action
              },
              child: const Text('Sign Agreement'),
            ),
          ],
        ),
      ),
    );
  }
}

