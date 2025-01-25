import 'package:flutter/material.dart';

class EmployeeContractPage extends StatelessWidget {
  const EmployeeContractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Contract'),
      ),
      body: const Center(
        child: Text('This is the Employee Contract Page'),
      ),
    );
  }
}
