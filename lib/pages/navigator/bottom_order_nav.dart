import 'package:flutter/material.dart';
import 'package:merchantapp/pages/history_request.dart';
import 'package:merchantapp/pages/navigator/key_global.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/order_page.dart';
import 'package:merchantapp/pages/sample/details_request.dart';
import 'package:merchantapp/pages/setting_noti.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}



class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: RIKeys.riKey5,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NameScreen.plusScreen:
                  return const OrderPage();
                case NameScreen.settingNotiScreen:
                  return const SettingNoti();
                case NameScreen.historyScreen:
                  return const HistoryRequest();
                case NameScreen.detailsRequestScreen:
                  return const DetailsRequest();
                default:
                  return const OrderPage();
              }
            });
      },
    );
  }
}
