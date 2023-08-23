import 'package:flutter/material.dart';
import '../models/models.dart';
import '../services/api_service.dart';

class HomeViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();
  HomeData? homeData;
  bool isLoading = false;

  Future<void> fetchHomeData() async {
    isLoading = true;
    notifyListeners();

    try {
      homeData = await apiService.fetchHomeData();
      isLoading = false;
      notifyListeners();
    } catch (e) {
      isLoading = false;
      notifyListeners();
    }
  }
}
