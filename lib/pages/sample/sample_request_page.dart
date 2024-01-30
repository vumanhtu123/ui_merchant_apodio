import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/items/item_order_request.dart';
import 'package:merchantapp/pages/widgets/divider_widget.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';
import 'package:merchantapp/pages/widgets/normal_button.dart';

class SampleRequestPage extends StatefulWidget {
  const SampleRequestPage({Key? key}) : super(key: key);

  @override
  State<SampleRequestPage> createState() => _SampleRequestPage();
}

class _SampleRequestPage extends State<SampleRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: 'assets/CaretLeft.svg',
        title: 'Yêu cầu mẫu',
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
                  title: 'Thêm yêu cầu vào giỏ',
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
                children: const [ItemOrderRequest(), ItemOrderRequest()],
              ),
              const DividerWidget(
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              Column(
                children: const [
                  NormalButton(
                    title: 'Yêu cầu mẫu',
                    iconAsset: 'assets/ShoppingCart.svg',
                    width: 314,
                    height: 42,
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
