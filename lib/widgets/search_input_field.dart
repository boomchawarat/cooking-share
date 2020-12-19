import 'package:cooking_share/values/values.dart';
import 'package:flutter/material.dart';

class SearchInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextStyle textFormFieldStyle;
  final TextStyle hintTextStyle;
  final BorderStyle borderStyle;
  final GestureTapCallback onTapOfLeadingIcon;
  final double borderRadius;
  final double borderWidth;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final String prefixIconImagePath;
  final String hintText;
  final Color borderColor;
  final Color prefixIconColor;
  final Color fillColor;
  final bool filled;
  final bool obscured;
  ValueChanged<String> onChanged;
  Widget prefixIcon;

  SearchInputField(
    this.prefixIconImagePath, {
    this.controller,
    this.textFormFieldStyle = Styles.normalTextStyle,
    this.hintTextStyle = Styles.normalTextStyle,
    this.borderStyle = BorderStyle.none,
    this.onTapOfLeadingIcon,
    this.borderRadius = Sizes.RADIUS_12,
    this.borderWidth = Sizes.WIDTH_0,
    this.contentPaddingHorizontal = Sizes.PADDING_0,
    this.contentPaddingVertical = Sizes.PADDING_22,
    this.hintText,
    this.borderColor = Colors.grey,
    this.prefixIconColor = AppColors.accentText,
    this.fillColor = AppColors.fillColor,
    this.filled = true,
    this.obscured = false,
    this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        style: textFormFieldStyle,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
              style: borderStyle,
            ),
          ),
          prefixIcon: InkWell(
            onTap: onTapOfLeadingIcon,
            child: prefixIcon ?? defaultPrefixIcon(),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: contentPaddingHorizontal,
            vertical: contentPaddingVertical,
          ),
          hintText: hintText,
          hintStyle: hintTextStyle,
          filled: filled,
          fillColor: fillColor,
        ),
        obscureText: obscured,
        onChanged: onChanged,
      ),
    );
  }

  Widget defaultPrefixIcon() {
    return ImageIcon(
      AssetImage(prefixIconImagePath),
      color: prefixIconColor,
    );
  }
}
