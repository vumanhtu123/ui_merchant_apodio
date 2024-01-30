import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/main_menu.dart';
import 'package:merchantapp/pages/widgets/normal_button.dart';

import 'widgets/divider_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Image.asset("assets/images/img_header.png", fit: BoxFit.cover),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Image.asset(
                            'assets/icons/ic_logo.png',
                            width: 61,
                            height: 44,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/Contry.svg',
                              width: 22,
                            ),
                            SvgPicture.asset(
                              'assets/icons/ic_caret_down.svg',
                              width: 8,
                              height: 8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  SvgPicture.asset('assets/Frame.svg'),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email, số điện thoại hoặc username',
                        hintStyle: appStyles.textHint(),
                        icon: SvgPicture.asset(
                          'assets/User.svg',
                          width: 22,
                          height: 22,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Mật khẩu',
                        hintStyle: appStyles.textHint(),
                        icon: SvgPicture.asset(
                          'assets/Lock.svg',
                          width: 22,
                          height: 22,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Switch(
                            value: _active,
                            onChanged: (bool value) {
                              setState(() {
                                _active = value;
                              });
                            }),
                        const Text('Ghi nhớ tài khoản'),
                        const Spacer(),
                        Text(
                          'Quên mật khẩu?',
                          style: appStyles.textBlue1(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: NormalButton(
                      title: "Đăng nhập",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainMenu()));
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hoặc đăng nhập bằng',
                        style: appStyles.textHint(),
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset('assets/Google.svg'),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
