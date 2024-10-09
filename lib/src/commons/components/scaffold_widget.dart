import 'package:flutter/material.dart';
import 'package:invest_app/src/commons/theme/app_colors.dart';

class ScaffoldWidget extends StatelessWidget {
  final String? title;
  final bool showAppBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  const ScaffoldWidget({
    super.key,
    this.title,
    this.showAppBar = false,
    this.bottomNavigationBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      appBar: showAppBar
          ? AppBar(
              title: Text(
                title ?? "",
                style: const TextStyle(color: AppColors.light),
              ),
              backgroundColor: AppColors.dark,
              iconTheme: const IconThemeData(color: AppColors.light),
            )
          : null,
      bottomNavigationBar: bottomNavigationBar,
      body: body,
    );
  }
}
