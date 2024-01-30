import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';

import '../widgets/divider_widget.dart';

class ItemPurchase extends StatelessWidget {
  const ItemPurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 40,
            height: 140,
            child: VerticalDivider(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 15),
          child: SvgPicture.asset('assets/icons/CheckCircle.svg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Ngày 02/12/2021',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('onclick');
                            Navigator.pushNamed(context, '/details purchase');
                          },
                          child: Text(
                            'Mã: ĐH_19309191 lúc 10:17',
                            textAlign: TextAlign.right,
                            style: appStyles.textBlueDark(),
                          ),
                        ),
                        Text(
                          'Đang thực hiện',
                          style: appStyles.textBlack(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const DividerWidget(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Tiền hàng:',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          '89.000.000',
                          style: appStyles.textBlack(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const DividerWidget(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chiết khấu:',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          '5.000.000',
                          style: appStyles.textBlack(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const DividerWidget(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Tổng tiền cần thanh toán:',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          '84.000.000',
                          style: appStyles.textRed(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const DividerWidget(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Trọng tải đơn hàng dự tính:',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          '37kg',
                          style: appStyles.textBlack(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const DividerWidget(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Phê duyệt:',
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          'Trần Ngọc Minh',
                          style: appStyles.textBlueDark2(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
