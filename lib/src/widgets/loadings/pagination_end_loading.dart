import 'package:flutter/material.dart';
import 'package:ulad_flutter_utils/ulad_flutter_utils.dart';

class PaginationEndLoading extends StatelessWidget {
  const PaginationEndLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(child: PrimaryLoading()),
        spacingV16,
      ],
    );
  }
}
