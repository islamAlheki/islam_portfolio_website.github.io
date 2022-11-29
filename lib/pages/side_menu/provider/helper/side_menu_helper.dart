import 'package:flutter/material.dart';

class SideMenuHelper extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  int selectedTapIndex=1; // 0=> dashboard  1=> All Chats  2=> Active Chat  3=> Finished Chats  4=> Support Team  5=> blocked Users

  setTabIndex({required int index}){
    selectedTapIndex=index;
    notifyListeners();
  }

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
