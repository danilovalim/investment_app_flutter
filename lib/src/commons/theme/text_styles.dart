import 'package:flutter/material.dart';
import 'package:invest_app/src/commons/theme/app_colors.dart';

abstract class TextStyles {
  static const h1 = TextStyle(color: AppColors.light, fontSize: 24);
  static const h2 = TextStyle(color: AppColors.light, fontSize: 22);
  static const title = TextStyle(color: AppColors.light, fontSize: 16);
  static const content = TextStyle(color: AppColors.light, fontSize: 16);
}
