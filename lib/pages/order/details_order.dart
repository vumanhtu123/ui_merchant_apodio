import 'package:flutter/material.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/items/item_details_order.dart';
import 'package:merchantapp/pages/widgets/divider_widget.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class DetailsOrder extends StatefulWidget {
  const DetailsOrder({Key? key}) : super(key: key);

  @override
  State<DetailsOrder> createState() => _DetailsOrderState();
}

class _DetailsOrderState extends State<DetailsOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NormalAppBar2(
          leadingIcon1: 'assets/CaretLeft.svg',
          title: 'Chi tiết ĐH_19389898',
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ngày đặt hàng:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '01/12/2021',
                    style: appStyles.textBlack(
                        fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tiền hàng:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '130.900.000',
                    style: appStyles.textBlack(
                        fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chiết khấu:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '16.000.000',
                    style: appStyles.textBlack(
                        fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tổng tiền cần thanh toán:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '114.900.000',
                    style: appStyles.textBlack(
                        fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Đã thanh toán:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '100.000.000',
                    style: appStyles.textWhite2(
                        color: const Color(0xFF213660),
                        fontWeight: FontWeight.w600,
                        fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Còn nợ:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '14.900.000',
                    style: appStyles.textWhite2(
                        color: const Color(0xFFCB473E),
                        fontWeight: FontWeight.w600,
                        fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trọng tải đơn hàng:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '37kg',
                    style: appStyles.textBlack(
                        fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thời gian phát sinh công nợ:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '03/12/2021',
                    style: appStyles.textBlack(
                        fontWeight: FontWeight.w400, fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phê duyệt:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Nguyễn Quang Tuấn',
                    style: appStyles.textWhite2(
                        color: const Color(0xFF213660),
                        fontWeight: FontWeight.w600,
                        fontSize: 11),
                  )
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trạng thái:',
                    style: appStyles.textBlack(
                        fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Đã hoàn thành',
                    style: appStyles.textWhite2(
                        color: const Color(0xFF00CC6A),
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                ],
              ),
            ),
            const DividerWidget(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sản phẩm đã đặt',
                          style: appStyles.textWhite2(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF242424))),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      ItemDetails(),
                      ItemDetails(),
                      ItemDetails(),
                      ItemDetails()
                    ],
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
