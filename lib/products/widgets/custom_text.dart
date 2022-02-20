import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextStyle? textStyle;
  final TextOverflow? overflow;
  final int? maxLines;
  const CustomText({
    required this.title,
    required this.fontSize,
    required this.fontWeight,
    this.color,
    this.textStyle,
    this.overflow,
    this.maxLines,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.length<35?title:title.substring(0,20),
      style: TextStyle(
        
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        overflow: overflow,
        
      ),
      maxLines: maxLines,
      softWrap: false,
    );
  }
}