import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ValidatePassword extends StatelessWidget {
  const ValidatePassword(
      {super.key,
      required this.hasNumber,
      required this.hasSpecialChar,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.isLongEnough});
  final bool hasNumber;
  final bool hasSpecialChar;

  final bool hasUppercase;

  final bool hasLowercase;

  final bool isLongEnough;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(text: 'has number', isValid: hasNumber),
        buildValidationRow(text: 'hasSpecialChar', isValid: hasSpecialChar),
        buildValidationRow(text: 'hasUppercase', isValid: hasUppercase),
        buildValidationRow(text: 'hasLowercase', isValid: hasLowercase),
        buildValidationRow(text: 'isLongEnough', isValid: isLongEnough),
      ],
    );
  }

  buildValidationRow({required String text, required bool isValid}) {
    return Row(
      children: [
        isValid
            ? const Icon(
                Icons.check,
                color: Colors.green,
              )
            : const Icon(
                Icons.close,
                color: Colors.red,
              ),
        Text(text),
      ],
    );
  }
}
