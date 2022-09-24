import 'package:flutter/widgets.dart';
import 'package:login_system/utils/sharedPref.dart';

class LoginProvider extends ChangeNotifier {
  String? value;
  void getuser() async {

    value = await getusername();
    notifyListeners();
  }
}
