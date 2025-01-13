import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TranslatableText extends StatelessWidget {
  final String textKey;
  final TextStyle? style;

  const TranslatableText(this.textKey, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      textKey.tr(), // Automatically translates the key
      style: style,
    );
  }
}
