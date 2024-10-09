import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invest_app/src/commons/components/elevated_button_widget.dart';
import 'package:invest_app/src/commons/components/scaffold_widget.dart';
import 'package:invest_app/src/commons/theme/app_colors.dart';
import 'package:invest_app/src/presentation/pages/investment_result/investment_result_controller.dart';

class InvestmentResultPage extends GetView<InvestmentResultController> {
  const InvestmentResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ElevatedButtonWidget(
          title: 'Concluir',
          isLoading: false,
          onPressed: controller.openHomePage,
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.done,
              color: AppColors.light,
              size: 50,
            ),
            Text(
              "Investimento realizado com sucesso!",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.light, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
