import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:troubling/providers/company_provider.dart';
import 'constants/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //just example
        ChangeNotifierProvider(create: (_) => CompanyProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Troubling Web Page',
        initialRoute: AppRoutes.initial,
        routes: AppRoutes.routes,
      ),
    );
  }
}
