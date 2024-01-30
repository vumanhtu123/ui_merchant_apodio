import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, NameScreen.programsScreen);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF007AFE),
                  Color(0xFF53A0F5),
                ],
                stops: [0.0, 1.0],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 29, right: 9, top: 4, bottom: 37),
              child: SvgPicture.asset(
                'assets/News.svg',
                width: 261,
                height: 159,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Container(
            width: 50,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Text(
                    '14',
                    style: appStyles.textBlackNews(),
                  ),
                  Text(
                    'Tháng 10',
                    style: appStyles.textRedNews(),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 110, bottom: 12, left: 12, right: 12),
          child: Center(
            child: Container(
                width: 275,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Chính sách MUA 3 TẶNG 1',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Bắt đầu: 14/10/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Kết thúc: 30/03/2022',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
