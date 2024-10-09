import 'package:invest_app/src/data/datasources/treasury_direct_datasource.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_investment.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';

class TreasuryDirectDatasource implements ITreasuryDirectDatasource {
  @override
  Future<void> initSession() async {
    print("Treasury Direct Session initialized...");
  }

  @override
  Future<List<TreasuryDirectProduct>> getProducts() async {
    return [
      TreasuryDirectProduct(id: 01, name: "Prefixados", value: 10),
      TreasuryDirectProduct(id: 02, name: "Educa +", value: 15),
      TreasuryDirectProduct(id: 03, name: "Selic", value: 20),
      TreasuryDirectProduct(id: 04, name: "IPCA", value: 25),
    ];
  }

  @override
  Future invest(TreasuryDirectInvestment investment) async {
    print("Treasury Direct invested...");
  }
}
