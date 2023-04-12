import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class NavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;

  String currentTab = "home";

  void changeCurrentTabTo(String newTab) {
    currentTab = newTab;
    print(newTab);
    notifyListeners();
  }

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }


  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();

    } catch (e) {
      print('Error occurred while signing out: $e');
    }
  }
}
