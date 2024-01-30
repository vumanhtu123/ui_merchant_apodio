import 'package:flutter/material.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';
import 'package:merchantapp/pages/widgets/normal_button.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: 'assets/CaretLeft.svg',
        title: 'Thông tin đại lý',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            input(hint: 'hoanghaceramic', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(hint: 'Trần Thị', color: 0xFF000000, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(hint: 'Hương', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(
                hint: 'tranthihuong@apodio.com',
                color: 0xFF747475,
                onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(hint: '0977948837', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(hint: 'Nữ', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(hint: '19/07/1995', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(
                hint: 'Đại lý Hoàng Hà Ceramic',
                color: 0xFF747475,
                onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(
                hint: 'Hanoi, Việt Nam (UTC +7)',
                color: 0xFF747475,
                onChange: ''),
            const SizedBox(
              height: 20,
            ),
            input(hint: 'Việt Nam', color: 0xFF747475, onChange: ''),
            const SizedBox(
              height: 20,
            ),
            const NormalButton(
              title: 'Lưu thay đổi',
              width: 314,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

Widget input(
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
              onChanged: (stringNew) {
                print(stringNew);
                onChange = stringNew;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: appStyles.textHint(
                    color: Color(color),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )),
        ));
