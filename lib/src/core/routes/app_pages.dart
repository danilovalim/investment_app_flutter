import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/details/fixed_income_details_bindings.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/details/fixed_income_details_page.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/fixed_income_bindings.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/fixed_income_page.dart';
import 'package:invest_app/src/presentation/pages/funds/details/funds_details_bindings.dart';
import 'package:invest_app/src/presentation/pages/funds/details/funds_details_page.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_bindings.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_page.dart';
import 'package:invest_app/src/presentation/pages/home/home_bindings.dart';
import 'package:invest_app/src/presentation/pages/home/home_page.dart';
import 'package:invest_app/src/presentation/pages/investment_result/investment_result_bindings.dart';
import 'package:invest_app/src/presentation/pages/investment_result/investment_result_page.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/details/treasury_direct_details_bindings.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/details/treasury_direct_details_page.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/treasury_direct_bindings.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/treasury_direct_page.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.treasuryDirect,
      page: () => const TreasuryDirectPage(),
      binding: TreasuryDirectBindings(),
    ),
    GetPage(
      name: AppRoutes.treasuryDirectDetails,
      page: () => const TreasuryDirectDetailsPage(),
      binding: TreasuryDirectDetailsBindings(),
    ),
    GetPage(
      name: AppRoutes.fixedIncome,
      page: () => const FixedIncomePage(),
      binding: FixedIncomeBindings(),
    ),
    GetPage(
      name: AppRoutes.fixedIncomeDetails,
      page: () => const FixedIncomeDetailsPage(),
      binding: FixedIncomeDetailsBindings(),
    ),
    GetPage(
      name: AppRoutes.funds,
      page: () => const FundsPage(),
      binding: FundsBindings(),
    ),
    GetPage(
      name: AppRoutes.fundsDetails,
      page: () => const FundsDetailsPage(),
      binding: FundsDetailsBindings(),
    ),
    GetPage(
      name: AppRoutes.investmentResult,
      page: () => const InvestmentResultPage(),
      binding: InvestmentResultBindings(),
    )
  ];
}
