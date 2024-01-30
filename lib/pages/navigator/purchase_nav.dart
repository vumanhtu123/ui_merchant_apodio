import 'package:flutter/material.dart';
import 'package:merchantapp/pages/history_request.dart';
import 'package:merchantapp/pages/navigator/key_global.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/order/details_order.dart';
import 'package:merchantapp/pages/purchase/purchase_page.dart';
import 'package:merchantapp/pages/sample/details_request.dart';
import 'package:merchantapp/pages/setting_noti.dart';

class PurchaseNav extends StatefulWidget {
  const PurchaseNav({Key? key}) : super(key: key);

  @override
  State<PurchaseNav> createState() => _PurchaseNavState();
}

class _PurchaseNavState extends State<PurchaseNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: RIKeys.riKey4,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NameScreen.purchaseScreen:
                  return const PurchasePage();
                case NameScreen.detailsPurchaseScreen:
                  return const DetailsOrder();
                case NameScreen.settingNotiScreen:
                  return const SettingNoti();
                case NameScreen.historyScreen:
                  return const HistoryRequest();
                case NameScreen.detailsRequestScreen:
                  return const DetailsRequest();
                default:
                  return const PurchasePage();
              }
            });
      },
    );
  }
}
