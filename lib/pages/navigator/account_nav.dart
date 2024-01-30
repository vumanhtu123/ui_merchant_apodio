import 'package:flutter/material.dart';
import 'package:merchantapp/pages/account/change_pass.dart';
import 'package:merchantapp/pages/account/info_agency.dart';
import 'package:merchantapp/pages/account_page.dart';
import 'package:merchantapp/pages/history_request.dart';
import 'package:merchantapp/pages/items/items_news_sale.dart';
import 'package:merchantapp/pages/navigator/key_global.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/sample/details_request.dart';
import 'package:merchantapp/pages/setting_noti.dart';

class AccountNav extends StatefulWidget {
  final BuildContext mainContext;

  const AccountNav({Key? key, required this.mainContext}) : super(key: key);

  @override
  State<AccountNav> createState() => _AccountNavState();
}

class _AccountNavState extends State<AccountNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: RIKeys.riKey1,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NameScreen.accountScreen:
                  return AcountScreen(
                    mainContext: widget.mainContext,
                  );
                case NameScreen.infoScreen:
                  return const Info();
                case NameScreen.changeScreen:
                  return const Change();
                case NameScreen.detailsNewsScreen:
                  return const News();
                case NameScreen.settingNotiScreen:
                  return const SettingNoti();
                case NameScreen.historyScreen:
                  return const HistoryRequest();
                case NameScreen.detailsRequestScreen:
                  return const DetailsRequest();
                default:
                  return AcountScreen(
                    mainContext: widget.mainContext,
                  );
              }
            });
      },
    );
  }
}
