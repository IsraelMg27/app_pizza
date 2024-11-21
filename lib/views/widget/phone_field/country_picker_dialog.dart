import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import 'countries.dart';
import 'helpers.dart';

class PickerDialogStyle {
  final Color? backgroundColor;

  final TextStyle? countryCodeStyle;

  final TextStyle? countryNameStyle;

  final Widget? listTileDivider;

  final EdgeInsets? listTilePadding;

  final EdgeInsets? padding;

  final Color? searchFieldCursorColor;

  final InputDecoration? searchFieldInputDecoration;

  final EdgeInsets? searchFieldPadding;

  final double? width;

  PickerDialogStyle({
    this.backgroundColor,
    this.countryCodeStyle,
    this.countryNameStyle,
    this.listTileDivider,
    this.listTilePadding,
    this.padding,
    this.searchFieldCursorColor,
    this.searchFieldInputDecoration,
    this.searchFieldPadding,
    this.width,
  });
}

class CountryPickerDialog extends StatefulWidget {
  final List<Country> countryList;
  final Country selectedCountry;
  final ValueChanged<Country> onCountryChanged;
  final String searchText;
  final List<Country> filteredCountries;
  final PickerDialogStyle? style;

  const CountryPickerDialog({
    Key? key,
    required this.searchText,
    required this.countryList,
    required this.onCountryChanged,
    required this.selectedCountry,
    required this.filteredCountries,
    this.style,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CountryPickerDialogState createState() => _CountryPickerDialogState();
}

class _CountryPickerDialogState extends State<CountryPickerDialog> {
  late List<Country> _filteredCountries;
  late Country _selectedCountry;
  int? tappedIndex;
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  void initState() {
    _selectedCountry = widget.selectedCountry;
    _filteredCountries = widget.filteredCountries;
    tappedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
          horizontal: SizeConfig.kHeight20, vertical: SizeConfig.kHeight120),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.borderRadius10)),
      backgroundColor: widget.style?.backgroundColor,
      child: Container(
        padding: const EdgeInsets.all(SizeConfig.borderRadius10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: widget.style?.searchFieldPadding ??
                  const EdgeInsets.all(SizeConfig.kHeight0),
              child: TextFormField(
                cursorColor: darkModeController.isLightTheme.value
                    ? ColorConfig.kHintColor
                    : ColorConfig.kWhiteColor,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: SizeConfig.kHeight0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConfig.kBorderColor),
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConfig.kBorderColor),
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConfig.kBorderColor),
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius10)),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConfig.kPrimaryColor),
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius10)),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kHintColor
                          : ColorConfig.kWhiteColor,
                      size: FontConfig.kFontSize20,
                    ),
                    hintText: "Search Country",
                    hintStyle: TextStyle(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kHintColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: FontConfig.kFontSize14,
                        fontFamily: FontFamilyConfig.urbanistRegular)),
                onChanged: (value) {
                  _filteredCountries = isNumeric(value)
                      ? widget.countryList
                          .where((country) => country.dialCode.contains(value))
                          .toList()
                      : widget.countryList
                          .where((country) => country.name
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                          .toList();
                  if (mounted) setState(() {});
                },
              ),
            ),
            const SizedBox(height: SizeConfig.kHeight20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredCountries.length,
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.borderRadius10,
                        ),
                        color: tappedIndex == index
                            ? darkModeController.isLightTheme.value
                                ? ColorConfig.kButtonLightColor
                                : ColorConfig.kDarkDialougeColor
                            : null,
                      ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.only(left: SizeConfig.kHeight10),
                        leading: Text(
                          _filteredCountries[index].flag,
                        ),
                        title: Row(
                          children: [
                            Text(
                              _filteredCountries[index].name,
                              style: TextStyle(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize14),
                            ),
                            Text(
                              ' (+${_filteredCountries[index].dialCode})',
                              style: TextStyle(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize14),
                            ),
                          ],
                        ),
                        onTap: () {
                          _selectedCountry = _filteredCountries[index];
                          widget.onCountryChanged(_selectedCountry);
                          // Navigator.of(context).pop();
                          setState(() {
                            tappedIndex = index;
                          });
                        },
                      ),
                    ),
                    // widget.style?.listTileDivider ??
                    //     const Divider(thickness: 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
