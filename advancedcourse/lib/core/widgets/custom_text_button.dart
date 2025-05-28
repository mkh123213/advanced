import 'package:advancedcourse/core/theming/colors.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: ColorsManager.mainBlue,
          // fixedSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(
            color: ColorsManager.mainBlue,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.font13GrayRegular
              .copyWith(color: Colors.white, fontSize: 16),
        ));
  }
}
