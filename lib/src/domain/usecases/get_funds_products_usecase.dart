import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/usecases/get_products_usecase.dart';

abstract class IGetFundsProductsUsecase
    implements IGetProductsUsecase<FundProduct> {}
