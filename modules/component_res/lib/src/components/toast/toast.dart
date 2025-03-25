
import 'package:fluttertoast/fluttertoast.dart';

mixin Toast{


  static void showToast(String msg){

    Fluttertoast.showToast(msg: msg,);
  }

}