import 'package:invest_app/src/data/datasources/funds_datasource.dart';
import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/entities/funds_investment.dart';

class FundsDatasource implements IFundsDatasource {
  @override
  Future invest(FundsInvestment investment) async{
    print("Funds invested...");
  }

  @override
  Future<List<FundProduct>> getProducts() async{
    return [
      FundProduct(id: 1, name: "A1 Agro ABC", value: 10),
      FundProduct(id: 2, name: "ZED A234", value: 35),
      FundProduct(id: 3, name: "BID ABC", value: 50),
      FundProduct(id: 4, name: "EAF ULF", value: 22),
      FundProduct(id: 5, name: "A23 Tec 25", value: 18),
    ];
  }
}
