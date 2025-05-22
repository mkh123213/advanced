// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:advancedcourse/core/theming/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.ispassword,
    this.padding, this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final bool? ispassword;
  final EdgeInsetsGeometry? padding;
  final Widget ? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: ispassword ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        isDense: true,
        contentPadding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ColorsManager.mainBlue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ColorsManager.graylight),
        ),
      ),
    );
  }
}
