import 'package:flutter/material.dart';
import 'agreement_repository_page.dart'; // Import the respective pages
import 'agreement_detail_page.dart';
import 'vendor_agreement_page.dart'; // Import the vendor agreement page
import 'nda_page.dart'; // Import the NDA page
import 'employee_contract_page.dart'; // Import the employee contract page
import 'expiration_renewal_tracking_page.dart'; // Import the expiration and renewal tracking page
import 'workflow_automation_page.dart'; // Import the workflow automation page
import 'insights_reporting_page.dart'; // Import the insights and reporting page

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agreement Management Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Agreement Repository Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgreementRepositoryPage(),
                  ),
                );
              },
              child: const Text('Agreement Repository'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Agreement Detail Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgreementDetailPage(agreementId: '',),
                  ),
                );
              },
              child: const Text('Agreement Detail'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Vendor Agreement Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VendorAgreementPage(),
                  ),
                );
              },
              child: const Text('Vendor Agreement'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to NDA Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NDAPage(),
                  ),
                );
              },
              child: const Text('Non-Disclosure Agreement'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Employee Contract Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmployeeContractPage(),
                  ),
                );
              },
              child: const Text('Employee Contracts'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Expiration and Renewal Tracking Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpirationRenewalTrackingPage(),
                  ),
                );
              },
              child: const Text('Expiration and Renewal Tracking'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Workflow Automation Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkflowAutomationPage(),
                  ),
                );
              },
              child: const Text('Workflow Automation'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Insights and Reporting Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InsightsReportingPage(),
                  ),
                );
              },
              child: const Text('Insights and Reporting'),
            ),
          ],
        ),
      ),
    );
  }
}

