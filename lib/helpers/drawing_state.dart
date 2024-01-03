import 'package:flutter/foundation.dart';

class DrawingState extends ChangeNotifier {

  late List<List<String>> grid = [
    ['','',''],
    ['','',''],
    ['','','']
  ];

  bool isFirstMoveDone = false;
  
  bool isDrawing = false;
  bool draw = false;
  int totalLineNumber = 100;
  int drawnLineNumber = 0;


  void setIsFirstMoveDone(bool value){
    isFirstMoveDone = value;
    notifyListeners();
  }
  void clearGrid (){
    grid = List.generate(3, (_) => List.generate(3, (_) => ''));
    print("bitti!!");
    notifyListeners();
  }
  void updateGrid(row,col,player){
    grid[row][col] = player;
    notifyListeners();
  }

  void setDrawing(bool value) {
    isDrawing = value;
    notifyListeners();
  }

  void setDraw(bool value) {
    draw = value;
    notifyListeners();
  }

  void setTotalLineNumber(int value) {
    totalLineNumber = value;
    notifyListeners();
  }

  void setDrawnLineNumber(int value) {
    drawnLineNumber = value;
    notifyListeners();
  }
}