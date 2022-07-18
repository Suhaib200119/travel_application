import 'package:flutter/cupertino.dart';

class ProviderChangeStatus extends ChangeNotifier{

  int indexPageView=0;

  void ChangeIndexPageView(int newIndexPageView){
    indexPageView=newIndexPageView;
    notifyListeners();
  }

}