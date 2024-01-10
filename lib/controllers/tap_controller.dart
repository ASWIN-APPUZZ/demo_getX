import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;
  RxInt _y = 0.obs;
  RxInt get y => _y;
  int _z = 0;
  int get z => _z;
 

  void increaseX() {
    _x++;
    update();
  }

  void decreseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y++;
    update();
  }

  void decreseY() {
    _y--;
    update();
  }

  void sumXY() {
    _z = x+_y.value;
    update();
  }
}
