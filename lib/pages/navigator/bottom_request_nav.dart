import 'package:flutter/material.dart';
import 'package:merchantapp/pages/history_request.dart';
import 'package:merchantapp/pages/navigator/key_global.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/sample/details_request.dart';
import 'package:merchantapp/pages/sample/sample_request_page.dart';
import 'package:merchantapp/pages/setting_noti.dart';

class BottomNav2 extends StatefulWidget {
  const BottomNav2({Key? key}) : super(key: key);

  @override
  State<BottomNav2> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav2> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: RIKeys.riKey6,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case NameScreen.plus2Screen:
                  return const SampleRequestPage();
                case NameScreen.settingNotiScreen:
                  return const SettingNoti();
                case NameScreen.historyScreen:
                  return const HistoryRequest();
                case NameScreen.detailsRequestScreen:
                  return const DetailsRequest();
                default:
                  return const SampleRequestPage();
              }
            });
      },
    );
  }
}
