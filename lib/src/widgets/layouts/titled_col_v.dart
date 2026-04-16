import 'package:flutter/material.dart';
import 'package:ulad_flutter_utils/ulad_flutter_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitledColV extends StatelessWidget {
  final Widget title;
  final Widget value;
  final bool titlePadding;
  final Widget? spacing;

  const TitledColV({
    required this.title,
    required this.value,
    this.titlePadding = true,
    this.spacing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: titlePadding ? EdgeInsets.only(left: 16.w) : EdgeInsets.zero,
          child: title,
        ),
        spacing ?? spacingV8,
        value,
      ],
    );
  }

  factory TitledColV.blueTitle(String title, Widget value) {
    return TitledColV(
      titlePadding: false,
      title: Text(title, style: ts16w400),
      value: value,
    );
  }

  factory TitledColV.text(String title, String value) {
    return TitledColV(
      titlePadding: false,
      title: Text(title, style: ts12w400),
      value: Text(value, style: ts16w400),
      spacing: spacingV4,
    );
  }

  factory TitledColV.title({required String title, required Widget value}) {
    return TitledColV(
      titlePadding: false,
      title: Text(title, style: ts14w500),
      value: value,
      spacing: SizedBox(height: 6.h),
    );
  }
}
