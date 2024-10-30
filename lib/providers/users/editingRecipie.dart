import 'package:flutter/material.dart';

class EditingRecipie extends ChangeNotifier{
  listAdd(List<String>ls,String s){
    ls.add(s);
    notifyListeners();
  }
  listpop(List<String>ls,String s){
    ls.remove(s);
    notifyListeners();
  }
}