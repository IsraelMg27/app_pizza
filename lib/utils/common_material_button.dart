import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';

import '../config/font_config.dart';
import '../config/size_config.dart';

class CommonMaterialButton extends StatelessWidget {
  final String? buttonText;
  final Function onButtonClick;
  final bool isButtonText;
  final double? textSize;
  final ButtonStyle? style;
  final Color? txtColor;
  final Color? buttonColor;
  final Widget? widget;
  final IconData? icon;
  final double? height;
  final double? width;
  final bool isButtonColor;
  final double? padding;

  const CommonMaterialButton(
      {Key? key,
      required this.buttonText,
      required this.onButtonClick,
      this.isButtonText = false,
      this.padding,
      this.style,
      this.textSize,
      this.txtColor,
      this.buttonColor,
      this.widget,
      this.height,
      this.width,
      this.isButtonColor = false,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 20),
      child: MaterialButton(
        elevation: 0,
        height: height,
        minWidth: width,
        color: buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.borderRadius40)),
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
                fontSize:
                    isButtonText == true ? textSize : FontConfig.kFontSize16),
          ),
        ),
      ),
    );
  }
}
