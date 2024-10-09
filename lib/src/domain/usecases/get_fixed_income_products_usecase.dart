import 'package:invest_app/src/domain/entities/fixed_income_product.dart';
import 'package:invest_app/src/domain/usecases/get_products_usecase.dart';

abstract class IGetFixedIncomeProductsUsecase
    implements IGetProductsUsecase<FixedIncomeProduct> {}
