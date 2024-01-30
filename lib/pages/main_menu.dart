import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/navigator/bottom_order_nav.dart';
import 'package:merchantapp/pages/navigator/bottom_request_nav.dart';
import 'package:merchantapp/pages/navigator/money_nav.dart';
import 'package:merchantapp/pages/navigator/purchase_nav.dart';
import 'package:merchantapp/pages/widgets/showBottomShetCustom.dart';

import 'navigator/account_nav.dart';
import 'navigator/home_nav.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIndex = 0;

  var listScreen = [const HomeNav(), const PurchaseNav(), const MoneyNav()];

  @override
  void initState() {
    listScreen.add(const MoneyNav());
    listScreen.add(
      AccountNav(
        mainContext: context,
      ),
    );
    super.initState();
  }

  void selectScreen(int index) {
    if (index == 2) {
      showBottomSheetCheck();
    } else {
      setSelect(index);
    }
  }

  void setSelect(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void showBottomSheetCheck() {
    Widget rowWidget({
      required String title,
      required Function() onItemTap,
    }) =>
        GestureDetector(
          onTap: () {
            onItemTap();
            setSelect(2);
            Navigator.pop(context);
          },
          child: Container(
            margin:
                const EdgeInsets.only(bottom: 10, left: 32, right: 32, top: 15),
            padding: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 1,
              color: Color(0xFFF6F7FB),
            ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: appStyles.textBlack(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
                SvgPicture.asset('assets/ArrowRight.svg'),
              ],
            ),
          ),
        );
    void gotoScreen2({required bool isRequest}) {
      listScreen[2] = isRequest ? const BottomNav() : const BottomNav2();
    }

    showBottomSheetCustom(
      context,
      title: '',
      child: SizedBox(
        width: 360,
        height: 131,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            rowWidget(
                title: 'Yêu cầu mẫu',
                onItemTap: () => gotoScreen2(isRequest: false)),
            rowWidget(
                title: 'Đặt hàng',
                onItemTap: () => gotoScreen2(isRequest: true)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: IndexedStack(index: currentIndex, children: listScreen),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => selectScreen(index),
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: _bottomNavigationBarItem(
                icon: "assets/Home.svg",
                title: "Trang chủ",
                index: 0,
                selectedIndex: currentIndex,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _bottomNavigationBarItem(
                icon: "assets/Order.svg",
                title: "Đơn hàng",
                index: 1,
                selectedIndex: currentIndex,
              ),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: _bottomNavigationBarItem(
                icon: "assets/icons/ic_plus.png",
                index: 2,
                selectedIndex: currentIndex,
              ),
              label: 'Plus',
            ),
            BottomNavigationBarItem(
              icon: _bottomNavigationBarItem(
                icon: "assets/Money.svg",
                title: "Công nợ",
                index: 3,
                selectedIndex: currentIndex,
              ),
              label: 'Money',
            ),
            BottomNavigationBarItem(
              icon: _bottomNavigationBarItem(
                icon: "assets/ChatsCircle.svg",
                title: "Tài khoản",
                index: 4,
                selectedIndex: currentIndex,
              ),
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}

Widget _bottomNavigationBarItem(
    {required String icon,
    required int index,
    required int selectedIndex,
    String? title}) {
  if (title == null) {
    return Image.asset(
      icon,
      width: 47,
      height: 47,
    );
  }
  return Column(
    children: [
      SvgPicture.asset(
        icon,
        color: (index == selectedIndex)
            ? const Color(0xFF325EA5)
            : const Color(0xFFA1A2A3),
        width: 16,
        height: 16,
      ),
      const SizedBox(height: 5),
      Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: (index == selectedIndex)
              ? const Color(0xFF325EA5)
              : const Color(0xFFA1A2A3),
        ),
      )
    ],
  );
}
