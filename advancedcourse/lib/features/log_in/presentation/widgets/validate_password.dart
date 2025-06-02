import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ValidatePassword extends StatelessWidget {
  const ValidatePassword(
      {super.key,
      required this.hasNumber,
      required this.hasSpecialCharacters,
      required this.hasUpperCase,
      required this.hasLowerCase,
      required this.hasMinLength});
  final bool hasNumber;
  final bool hasSpecialCharacters;

  final bool hasUpperCase;

  final bool hasLowerCase;

  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(text: 'has number', isValid: hasNumber),
        buildValidationRow(
            text: 'hasSpecialChar', isValid: hasSpecialCharacters),
        buildValidationRow(text: 'hasUppercase', isValid: hasUpperCase),
        buildValidationRow(text: 'hasLowercase', isValid: hasLowerCase),
        buildValidationRow(text: 'isLongEnough', isValid: hasMinLength),
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
