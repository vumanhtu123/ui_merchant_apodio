import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/widgets/divider_widget.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';
import 'package:merchantapp/pages/widgets/showBottomShetCustom.dart';

class AcountScreen extends StatefulWidget {
  final BuildContext mainContext;

  const AcountScreen({
    Key? key,
    required this.mainContext,
  }) : super(key: key);

  @override
  State<AcountScreen> createState() => _AcountScreenState();
}

class _AcountScreenState extends State<AcountScreen> {
  bool? check;

  void showBottomSheetLanguage({required BuildContext mainMenuContext}) {
    Widget rowWidget({
      required String title,
      required Function() onItemTap,
      required String icon,
    }) =>
        GestureDetector(
          onTap: () {
            onItemTap();
            Navigator.pop(context);
          },
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(icon),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        title,
                        style: appStyles.textBlack(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              const DividerWidget(
                height: 1,
                width: 292,
              ),
            ],
          ),
        );
    showBottomSheetCustom(
      mainMenuContext,
      title: '',
      child: SizedBox(
        width: 360,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            rowWidget(
              icon: 'assets/icons/ic_vietnam.svg',
              title: 'Tiếng Việt',
              onItemTap: () => {},
            ),
            rowWidget(
              icon: 'assets/icons/ic_eng.svg',
              title: 'Tiếng Anh',
              onItemTap: () => {},
            ),
            rowWidget(
              icon: 'assets/icons/ic_japan.svg',
              title: 'Tiếng Nhật',
              onItemTap: () => {},
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheetFont({required BuildContext mainMenuContext}) {
    Widget rowWidget({
      required String title,
      required Function() onItemTap,
    }) =>
        GestureDetector(
          onTap: () {
            onItemTap();
            Navigator.pop(context);
          },
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: appStyles.textBlack(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const DividerWidget(
                height: 1,
                width: 292,
              ),
            ],
          ),
        );
    showBottomSheetCustom(
      mainMenuContext,
      title: '',
      child: SizedBox(
        width: 360,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            rowWidget(
              title: 'Cỡ to',
              onItemTap: () => {},
            ),
            rowWidget(
              title: 'Cỡ thường',
              onItemTap: () => {},
            ),
            rowWidget(
              title: 'Cỡ nhỏ',
              onItemTap: () => {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: '',
        title: 'Tài khoản',
      ),
      body: Column(
        children: [
          item(
              icon: 'assets/icons/ic_people.svg',
              tittle: 'Thông tin đại lý',
              content: 'Tên, email, số điện thoại....',
              onItemTap: () {
                Navigator.of(context).pushNamed('/infoAccount');
              }),
          const DividerWidget(
            width: 314,
          ),
          item(
              icon: 'assets/icons/ic_lock.svg',
              tittle: 'Đổi mật khẩu',
              content: 'Thay đổi mật khẩu hiện tại',
              onItemTap: () {
                Navigator.of(context).pushNamed('/changeAccount');
              }),
          const DividerWidget(
            width: 314,
          ),
          item(
              icon: 'assets/icons/ic_language.svg',
              tittle: 'Cài đặt ngôn ngữ',
              content: 'Ngôn ngữ bạn đang sử dụng: Tiếng Việt',
              onItemTap: () {
                showBottomSheetLanguage(mainMenuContext: widget.mainContext);
              }),
          const DividerWidget(
            width: 314,
          ),
          item(
              icon: 'assets/icons/ic_noti.svg',
              tittle: 'Cài đặt thông báo',
              content: 'Lựa chọn các thông báo bạn sẽ nhận được',
              onItemTap: () {
                Navigator.pushNamed(context, NameScreen.settingNotiScreen);
              }),
          const DividerWidget(
            width: 314,
          ),
          item(
              icon: 'assets/icons/ic_font.svg',
              tittle: 'Cài đặt cỡ chữ',
              content: 'Cỡ chữ hiện tại: Cỡ thường',
              onItemTap: () {
                showBottomSheetFont(mainMenuContext: widget.mainContext);
              }),
          const DividerWidget(
            width: 314,
          ),
        ],
      ),
    );
  }
}

Widget item({
  required String icon,
  required String tittle,
  required String content,
  required Function() onItemTap,
}) =>
    GestureDetector(
        onTap: onItemTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(icon),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        tittle,
                        style: appStyles.textWhite2(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF242424)),
                      ),
                    ),
                    Text(
                      content,
                      style: appStyles.textWhite2(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF747475)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
