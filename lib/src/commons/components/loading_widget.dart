import 'package:flutter/material.dart';
import 'package:invest_app/src/commons/theme/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  final Color? color;

  const LoadingWidget({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? AppColors.light,
    );
  }
}
