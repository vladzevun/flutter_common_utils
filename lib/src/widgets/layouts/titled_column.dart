import 'package:flutter/material.dart';
import 'package:ulad_flutter_utils/ulad_flutter_utils.dart';

class TitledColumn extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const TitledColumn({required this.title, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title,
        spacingV8,
        Column(children: children),
      ],
    );
  }
}
