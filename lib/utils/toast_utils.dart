
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

/// Toast工具类
class ToastUtils {
  static void show(String msg, {int duration = 2000}) {
    if (msg == null) {
      return;
    }
    showToast(
      msg,
      duration: Duration(milliseconds: duration),
    );
  }
}