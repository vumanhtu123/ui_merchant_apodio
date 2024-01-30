import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';

// ignore: must_be_immutable
class NormalAppBar2 extends StatelessWidget with PreferredSizeWidget {
  String? title;
  String? leadingIcon;
  String leadingIcon1;
  String? actionsIcon;
  Function? onLeadingTap;
  double? elevation;
  Widget? widgetTitle;
  Widget? widgetIcon;
  List<Widget>? actions;

  NormalAppBar2({
    Key? key,
    this.widgetIcon,
    this.actionsIcon,
    this.onLeadingTap,
    this.title,
    this.widgetTitle,
    this.leadingIcon,
    required this.leadingIcon1,
    this.actions,
    this.elevation,
  }) : super(key: key);

  bool showButtonBack() {
    if (leadingIcon1 == '') {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: widgetTitle ??
          Text(
            title ?? 'Đặt hàng',
            style: appStyles.textWhite(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
      centerTitle: true,
      elevation: elevation ?? 0,
      leading: Builder(
        builder: (BuildContext context) {
          String routerName = ModalRoute.of(context)?.settings.name ?? '';
          return Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => {
                    if (routerName != NameScreen.historyScreen)
                      {Navigator.pushNamed(context, NameScreen.historyScreen)}
                  },
                  child: SizedBox(
                    width: 14,
                    height: 14,
                    child: SvgPicture.asset(
                      leadingIcon ?? "assets/icons/ic_menu.svg",
                    ),
                  ),
                ),
                Visibility(
                  visible: showButtonBack(),
                  child: InkWell(
                    onTap: () => {Navigator.pop(context)},
                    child: SizedBox(
                        width: 14,
                        height: 14,
                        child: SvgPicture.asset(leadingIcon1)),
                  ),
                )
              ],
            ),
          );
        },
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF007AFE),
              Color(0xFF53A0F5),
            ],
            stops: [0.0, 1.0],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
          ),
        ),
      ),
      actions: [
        Builder(builder: (BuildContext context) {
          String routerName = ModalRoute.of(context)?.settings.name ?? '';
          return InkWell(
            onTap: () => {
              if (routerName != NameScreen.settingNotiScreen)
                Navigator.pushNamed(context, NameScreen.settingNotiScreen),
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                width: 14,
                height: 14,
                child: SvgPicture.asset(
                  actionsIcon ?? "assets/Bell.svg",
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
