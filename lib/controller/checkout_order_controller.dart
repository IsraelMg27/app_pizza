import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';

class CheckoutOrderController extends GetxController {

  int selectedIndex = 0;
  bool isSelectedRating = false;

  List<String> deliveryInstructionsIcon = [
    ImagePath.bellRingIcon,
    ImagePath.buildingsIcon,
    ImagePath.remoteControllerIcon,
    ImagePath.securityIcon,
    ImagePath.microphoneIcon,
  ];

  List<String> instructionsString = [
    StringConfig.avoidRingingBell,
    StringConfig.leaveAtDoor,
    StringConfig.avoidCalling,
    StringConfig.leaveWithSecurity,
    StringConfig.directionToReach,
  ];
}