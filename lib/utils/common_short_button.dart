import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';

import '../config/font_config.dart';
import '../config/size_config.dart';

class CommonShortButton extends StatelessWidget {
  final String? buttonText;
  final Function onButtonClick;
  final double? textSize;
  final ButtonStyle? style;
  final Color? txtColor;
  final Color? buttonColor;
  final double? height;
  final double? width;

  const CommonShortButton(
      {Key? key,
      required this.buttonText,
      required this.onButtonClick,
      this.style,
      this.textSize,
      this.txtColor,
      this.buttonColor,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: width,
      color: buttonColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.borderRadius40),
      ),
      onPressed: () {
        onButtonClick();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeConfig.kHeight10, vertical: SizeConfig.kHeight10),
        child: Text(
          buttonText ?? '',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: txtColor,
              fontFamily: FontFamilyConfig.urbanistBold,
              fontSize: FontConfig.kFontSize18),
        ),
      ),
    );
  }
}
