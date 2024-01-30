import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/pages/items/item_purchase.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

import '../../common/app_styles.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: '',
        title: "Đơn hàng đã đặt",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 23),
              width: 314,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Color(0xFF716C6C))],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF007AFE),
                          Color(0xFF53A0F5),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 1.0),
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Công nợ',
                        style: appStyles.textWhite(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            text: '14.900.000',
                            style: appStyles.textRed(
                                fontWeight: FontWeight.w600, fontSize: 12),
                            children: [
                          TextSpan(text: 'đ', style: appStyles.textBlack())
                        ])),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                    height: 14,
                    child: InkWell(
                      child: SvgPicture.asset('assets/CaretLeftBlack.svg'),
                    ),
                  ),
                  Text(
                    'Tháng 11',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65),
                    child: Text(
                      'Tháng 12/2021',
                      style: appStyles.textBlack(
                          fontSize: 12, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 314,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: const [BoxShadow(color: Color(0xFF716C6C))]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Đơn hàng',
                        style: appStyles.textHint(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '4',
                        style: appStyles.textBlack(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Tổng tiền',
                        style: appStyles.textHint(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '318.300.000đ',
                        style: appStyles.textBlack(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              padding: const EdgeInsets.only(left: 20),
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ItemPurchase(),
                ItemPurchase(),
                ItemPurchase(),
                ItemPurchase(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
