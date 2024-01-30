import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  final double? height;
  final Color? color;
  final EdgeInsets? margin;
  final double? width;

  const DividerWidget(
      {super.key, this.height, this.color, this.margin, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width ?? 314,
      height: height ?? 1,
      color: color ?? const Color(0xFFF7F5FB),
    );
  }
}
