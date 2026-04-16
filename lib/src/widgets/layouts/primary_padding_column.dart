import 'package:flutter/material.dart';
import 'package:ulad_flutter_utils/ulad_flutter_utils.dart';

class PrimaryPaddingColumn extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsetsGeometry? padding;

  const PrimaryPaddingColumn({
    required this.children,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? edgeInsetsH16,
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
