import 'package:datingapp/constants/image.dart';
import 'package:get/get.dart';

class LikeController extends GetxController {
  List<LikeInfo> itemList = [
    LikeInfo(image: ImageConst.gril1Without),
    LikeInfo(image: ImageConst.gril2without),
    LikeInfo(image: ImageConst.girl3),
    LikeInfo(image: ImageConst.girl4),
    LikeInfo(image: ImageConst.girl5),
    LikeInfo(image: ImageConst.girl6),
    LikeInfo(image: ImageConst.girl7),
  ];

  var isSelected = false.obs;
  var isScreen = false.obs;
}

class LikeInfo {
  String? image;

  LikeInfo({this.image});
}
