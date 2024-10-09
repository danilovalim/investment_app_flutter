import 'package:flutter/material.dart';
import 'package:invest_app/src/commons/components/loading_widget.dart';
import 'package:invest_app/src/commons/theme/app_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final bool? isLoading;
  final Function() onPressed;

  const ElevatedButtonWidget({
    super.key,
    required this.title,
    this.isLoading = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(shape: const RoundedRectangleBorder()),
      child: (isLoading ?? false)
          ? const LoadingWidget(color: AppColors.primary,)
          : Text(
              title,
            ),
    );
  }
}
