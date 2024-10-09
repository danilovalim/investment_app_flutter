abstract class IGetProductsUsecase<T> {
  Future<List<T>> execute();
}
