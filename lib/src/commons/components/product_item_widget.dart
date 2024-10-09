import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final Function() onTap;
  final String title;

  const ProductItemWidget({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [Text(title)],
          ),
        ),
      ),
    );
  }
}
