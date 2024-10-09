abstract class IInvestment {
  final double value;
  final int quantity;
  final int productId;

  IInvestment({
    required this.value,
    required this.quantity,
    required this.productId,
  });
}
