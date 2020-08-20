
import 'dart:ui';
import 'package:flutter/cupertino.dart';

extension StringExtension on String{
  // 获取给定字符串的Size
  Size getTextSizeWithTextStyle(TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: this, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
