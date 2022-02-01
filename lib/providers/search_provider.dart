import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  String searchParams = '';

  get searchParamInfo => searchParams;

  void updateSearchParams(params) {
    searchParams = params;
    notifyListeners();
  }
}
