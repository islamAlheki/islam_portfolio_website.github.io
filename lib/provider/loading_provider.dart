import 'package:flutter/material.dart';

class LoadingProviderClass extends ChangeNotifier{
  bool showLoginLoading=false;
  bool showPageLoading=false;
  bool showErrorApiLoading=false;
  bool showSettingImageLoading=false;
  bool refreshTransactionPage=false;
  bool searchItemLoading=false;
  bool showAllCommentCardLoading=false;
  bool chatSupportLoading=true;




  setChatSupportLoading(bool loading) {
    chatSupportLoading=loading;
    notifyListeners();
  }


  setSearchItemLoading(bool loading) {
    searchItemLoading=loading;
    notifyListeners();
  }

  setShowErrorApiLoading(bool loading) {
    showErrorApiLoading=loading;
    notifyListeners();
  }

  setRefreshTransactionPage(bool loading) {
    refreshTransactionPage=loading;
    notifyListeners();
  }

  setSettingImageLoading(bool loading) {
    showSettingImageLoading=loading;
    notifyListeners();
  }

  setLoginLoading(bool loading) {
    showLoginLoading=loading;
    notifyListeners();
  }

  setPageLoading(bool loading) {
    showPageLoading=loading;
    notifyListeners();
  }

  setShowAllCommentCardLoading(bool loading) {
    showAllCommentCardLoading=loading;
    notifyListeners();
  }


}