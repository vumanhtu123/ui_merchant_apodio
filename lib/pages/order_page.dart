import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/items/item_oders.dart';
import 'package:merchantapp/pages/widgets/divider_widget.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';
import 'package:merchantapp/pages/widgets/normal_button.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: 'assets/CaretLeft.svg',
        title: 'Đặt hàng',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 314,
                height: 35,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                            width: 0.6, color: Colors.black26))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Chọn danh mục sản phẩm',
                              style: appStyles.textHint(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color(0xFF747475)),
                              children: [
                            TextSpan(text: ' *', style: appStyles.textRed())
                          ])),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/CaretDown.svg'))
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(),
                width: 314,
                height: 35,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                            width: 0.6, color: Colors.black26))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Chọn sản phẩm',
                              style: appStyles.textHint(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF747475)),
                              children: [
                            TextSpan(
                                text: ' *',
                                style: appStyles.textRed(
                                    fontWeight: FontWeight.w400, fontSize: 12))
                          ])),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/CaretDown.svg'))
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 314,
                height: 35,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                            width: 0.6, color: Colors.black26))),
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Nhập số lượng yêu cầu',
                          hintStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                          border: InputBorder.none),
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(),
                width: 314,
                height: 35,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                            width: 0.6, color: Colors.black26))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Chọn đơn vị tính',
                              style: appStyles.textHint(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color(0xFF747475)),
                              children: [
                            TextSpan(
                                text: ' *',
                                style: appStyles.textRed(
                                    fontWeight: FontWeight.w400, fontSize: 12))
                          ])),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/CaretDown.svg'))
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: NormalButton(
                  title: 'Thêm sản phẩm vào giỏ',
                  iconAsset: 'assets/ShoppingCart.svg',
                  width: 314,
                  height: 42,
                ),
              ),
              const Text(
                'Các sản phẩm trong giỏ hàng:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ListView(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                children: const [ItemOrders(), ItemOrders(), ItemOrders()],
              ),
              const DividerWidget(
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tiền hàng:',
                            style: appStyles.textBlack(
                                fontWeight: FontWeight.w400, fontSize: 11)),
                        Text(
                          '130.900.000',
                          style: appStyles.textBlack(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tổng chiết khấu:',
                            style: appStyles.textBlack(
                                fontWeight: FontWeight.w400, fontSize: 11)),
                        Text(
                          '16.000.000',
                          style: appStyles.textBlack(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tổng tiền cần thanh toán:',
                            style: appStyles.textBlack(
                                fontWeight: FontWeight.w400, fontSize: 11)),
                        Text(
                          '114.900.000',
                          style: appStyles.textRed(
                              fontSize: 11, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Trọng tải đơn hàng dự tính:',
                            style: appStyles.textBlack(
                                fontWeight: FontWeight.w400, fontSize: 11)),
                        Text(
                          '37kg',
                          style: appStyles.textBlack(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const DividerWidget(
                    margin: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: 314,
                    height: 35,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(
                                width: 0.6, color: Colors.black26))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: 'Hình thức thanh toán',
                                  style: appStyles.textHint(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xFF747475),
                                  ),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: appStyles.textRed(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400))
                              ])),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/CaretDown.svg'))
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: NormalButton(
                      title: 'Đặt hàng',
                      iconAsset: 'assets/ShoppingCart.svg',
                      width: 314,
                      height: 42,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
