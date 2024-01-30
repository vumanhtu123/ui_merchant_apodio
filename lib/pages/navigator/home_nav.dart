import 'package:flutter/material.dart';
import 'package:merchantapp/pages/home/details_programs.dart';
import 'package:merchantapp/pages/home/programs_page.dart';
import 'package:merchantapp/pages/home_page.dart';
import 'package:merchantapp/pages/navigator/key_global.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/sample/details_request.dart';
import 'package:merchantapp/pages/setting_noti.dart';

import '../history_request.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: RIKeys.riKey2,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NameScreen.homeScreen:
                  return const HomePage();
                case NameScreen.programsScreen:
                  return const Programs();
                case NameScreen.detailsProgramsScreen:
                  return const DetailsPrograms();
                case NameScreen.settingNotiScreen:
                  return const SettingNoti();
                case NameScreen.historyScreen:
                  return const HistoryRequest();
                case NameScreen.detailsRequestScreen:
                  return const DetailsRequest();
                default:
                  return const HomePage();
              }
            });
      },
    );
  }
}
