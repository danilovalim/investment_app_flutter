import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invest_app/src/commons/components/elevated_button_widget.dart';
import 'package:invest_app/src/commons/components/scaffold_widget.dart';
import 'package:invest_app/src/commons/theme/text_styles.dart';
import 'package:invest_app/src/presentation/pages/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bem vindo!!!', style: TextStyles.h1),
            const Text('Selecione o produto que deseja investir',
                style: TextStyles.title),
            const SizedBox(height: 20),
            ElevatedButtonWidget(
                title: "FUNDOS", onPressed: controller.openFundsProductsPage),
            const SizedBox(height: 20),
            ElevatedButtonWidget(
                title: "RENDA FIXA",
                onPressed: controller.openFixedIncomeProductsPage),
            const SizedBox(height: 20),
            ElevatedButtonWidget(
                title: "TESOURO DIRETO",
                onPressed: controller.openTreasuryDirectProductsPage),
          ],
        ),
      ),
    );
  }
}
