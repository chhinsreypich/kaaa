import 'package:flutter/material.dart';

//TODO: This is just example. Delete this file and create what you need.
class CompanyProvider extends ChangeNotifier {
  String _companyName = 'Software Factory';

  String get companyName => _companyName;

  void updateCompanyName(String newName) {
    _companyName = newName;
    notifyListeners();
  }
}