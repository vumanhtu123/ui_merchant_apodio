import 'package:flutter/material.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';
import 'package:merchantapp/pages/widgets/normal_button.dart';

class Change extends StatefulWidget {
  const Change({Key? key}) : super(key: key);

  @override
  State<Change> createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NormalAppBar2(
          leadingIcon1: 'assets/CaretLeft.svg',
          title: 'Đổi mật khẩu',
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            inputPass(hint: 'Mật khẩu hiện tại',color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            inputPass(hint: 'Mật khẩu mới', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            inputPass(
                hint: 'Nhập lại mật khẩu mới', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            const NormalButton(
              title: 'Lưu thay đổi',
              width: 314,
              height: 40,
            )
          ],
        ));
  }
}

Widget inputPass(
        {required String hint, required int color, required String onChange}) =>
    Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        width: 314,
        height: 35,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(width: 0.6, color: Colors.black26))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextField(
              onChanged: (value) {
                onChange = value;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: appStyles.textHint(
                    color: const Color(0xFF747475),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )),
        ));
