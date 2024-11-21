import 'package:foodish_delivery_flutter_ui_kit/localization/ar_sa.dart';
import 'package:foodish_delivery_flutter_ui_kit/localization/de_de.dart';
import 'package:foodish_delivery_flutter_ui_kit/localization/en_us.dart';
import 'package:foodish_delivery_flutter_ui_kit/localization/fr_fr.dart';
import 'package:foodish_delivery_flutter_ui_kit/localization/hi_in.dart';
import 'package:foodish_delivery_flutter_ui_kit/localization/zn_ch.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en": enUS,
    "hi": hiIN,
    "ar": arSA,
    "de": deDE,
    "fr": frFR,
    "zh": zhCN
  };
}
