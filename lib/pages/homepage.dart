import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:troubling/widgets/ka_button.dart';
// import 'package:troubling/widgets/theary_button.dart';
import '/providers/company_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final companyProvider = Provider.of<CompanyProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Company Name: ${companyProvider.companyName}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                companyProvider.updateCompanyName('New Company Name');
              },

              child: Text('Update Company Name'),
            ),
            
          ],
        ),
      ),
    );
  }
}