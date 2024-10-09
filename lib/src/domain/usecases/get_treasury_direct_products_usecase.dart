import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';
import 'package:invest_app/src/domain/usecases/get_products_usecase.dart';

abstract class IGetTreasuryDirectProductsUsecase
    implements IGetProductsUsecase<TreasuryDirectProduct> {}
