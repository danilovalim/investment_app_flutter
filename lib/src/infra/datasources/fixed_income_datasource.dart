import 'package:invest_app/src/data/datasources/fixed_income_datasource.dart';
import 'package:invest_app/src/domain/entities/fixed_income_investment.dart';
import 'package:invest_app/src/domain/entities/fixed_income_product.dart';

class FixedIncomeDatasource implements IFixedIncomeDatasource {
  @override
  Future invest(FixedIncomeInvestment investiment) async {
    print("Fixed Income invested...");
  }

  @override
  Future<List<FixedIncomeProduct>> getProducts() async {
    return [
      FixedIncomeProduct(id: 1, name: 'LCI ABC', value: 150),
      FixedIncomeProduct(id: 2, name: 'LCA CDE', value: 175),
      FixedIncomeProduct(id: 3, name: 'Debênture A', value: 190),
      FixedIncomeProduct(id: 4, name: 'CDB FGH', value: 100),
      FixedIncomeProduct(id: 5, name: 'CRI ABC', value: 150),
    ];
  }
}
