import 'package:flutter/material.dart';
import 'package:merchantapp/pages/history_request.dart';
import 'package:merchantapp/pages/navigator/key_global.dart';
import 'package:merchantapp/pages/money_page.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/sample/details_request.dart';

class MoneyNav extends StatefulWidget {
  const MoneyNav({Key? key}) : super(key: key);

  @override
  State<MoneyNav> createState() => _MoneyNavState();
}


class _MoneyNavState extends State<MoneyNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: RIKeys.riKey3,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NameScreen.moneyScreen:
                  return const MoneyPage();
                case '/details':
                  // return const DetailsOrder();
                case NameScreen.historyScreen:
                  return const HistoryRequest();
                case NameScreen.detailsRequestScreen:
                  return const DetailsRequest();
                default:
                  return const MoneyPage();
              }
            });
      },
    );
  }
}
