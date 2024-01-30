import 'package:flutter/material.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class SettingNoti extends StatefulWidget {
  const SettingNoti({Key? key}) : super(key: key);

  @override
  State<SettingNoti> createState() => _SettingNotiState();
}

class _SettingNotiState extends State<SettingNoti> {
  bool _activeNotification = false;
  bool _activePolicy = false;
  bool _activeApprove = false;

  checkShow() {
    if (_activeNotification == true) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        title: 'Cài đặt thông báo',
        leadingIcon1: 'assets/CaretLeft.svg',
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  'Cho phép thông báo',
                  style: appStyles.textHint(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF242424)),
                ),
              ),
              Switch(
                  value: _activeNotification,
                  onChanged: (bool value) {
                    setState(() {
                      _activeNotification = value;
                    });
                  }),
            ],
          ),
          Visibility(
              visible: checkShow(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Text(
                          'Chính sách bán hàng mới',
                          style: appStyles.textHint(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF242424)),
                        ),
                      ),
                      Switch(
                          value: _activePolicy,
                          onChanged: (bool value) {
                            setState(() {
                              _activePolicy = value;
                            });
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Text(
                          'Đơn hàng được phê duyệt',
                          style: appStyles.textHint(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF242424)),
                        ),
                      ),
                      Switch(
                          value: _activeApprove,
                          onChanged: (bool value) {
                            setState(() {
                              _activeApprove = value;
                            });
                          }),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
