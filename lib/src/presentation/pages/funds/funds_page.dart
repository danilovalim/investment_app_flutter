import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invest_app/src/commons/components/loading_widget.dart';
import 'package:invest_app/src/commons/components/product_item_widget.dart';
import 'package:invest_app/src/commons/components/scaffold_widget.dart';
import 'package:invest_app/src/commons/theme/text_styles.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_controller.dart';

class FundsPage extends GetView<FundsController> {
  const FundsPage({super.key});

  @override
  Widget build(BuildContext context) {
   return ScaffoldWidget(
      title: "Fundos",
      showAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(
          () => Center(
            child: controller.isLoading.value
                ? const LoadingWidget()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Selecione o Produto',
                        textAlign: TextAlign.center,
                        style: TextStyles.h2,
                      ),
                      const SizedBox(height: 20),
                      ...controller.products.map(
                        (product) => ProductItemWidget(
                          onTap: () {
                            controller.openProductDetailsPage(product);
                          },
                          title: product.name,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}