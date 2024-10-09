import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invest_app/src/commons/components/elevated_button_widget.dart';
import 'package:invest_app/src/commons/components/scaffold_widget.dart';
import 'package:invest_app/src/commons/theme/app_colors.dart';
import 'package:invest_app/src/presentation/pages/funds/details/funds_details_controller.dart';

class FundsDetailsPage extends GetView<FundsDetailsController> {
  const FundsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Detalhes do Produto",
      showAppBar: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Obx(
          () => ElevatedButtonWidget(
            title: "Investir",
            isLoading: controller.isLoading.value,
            onPressed: controller.invest,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nome do produto:",
              style: TextStyle(
                  color: AppColors.light, fontWeight: FontWeight.bold),
            ),
            Text(
              controller.product.name,
              style: const TextStyle(color: AppColors.light),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Valor mínimo:",
              style: TextStyle(
                  color: AppColors.light, fontWeight: FontWeight.bold),
            ),
            Text(
              "R\$ ${controller.product.value.toStringAsFixed(2)}",
              style: const TextStyle(color: AppColors.light),
            ),
          ],
        ),
      ),
    );
  }
}
