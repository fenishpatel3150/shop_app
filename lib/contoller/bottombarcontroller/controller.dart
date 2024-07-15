import 'package:flutter/cupertino.dart';

class BottomBarContoller extends ChangeNotifier
{
  int bottomindex=0;


  void setbottomindex(int index)
  {
    bottomindex=index;
    notifyListeners();
  }



}