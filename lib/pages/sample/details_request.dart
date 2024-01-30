import 'package:flutter/material.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/items/item_details_request.dart';
import 'package:merchantapp/pages/widgets/divider_widget.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class DetailsRequest extends StatefulWidget {
  const DetailsRequest({Key? key}) : super(key: key);

  @override
  State<DetailsRequest> createState() => _DetailsRequestState();
}

class _DetailsRequestState extends State<DetailsRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: 'assets/CaretLeft.svg',
        title: 'Chi tiết #010937131',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const DividerWidget(
              height: 2,
              width: 314,
              margin: EdgeInsets.symmetric(horizontal: 23),
              color: Color(0xfff6f7fb),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ngày yêu cầu mẫu:',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color(0xFF242424)),
                  ),
                  Text(
                    '01/12/2021',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color(0xFF242424)),
                  )
                ],
              ),
            ),
            const DividerWidget(
              height: 2,
              width: 314,
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 6),
              color: Color(0xfff6f7fb),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phê duyệt:',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color(0xFF242424)),
                  ),
                  Text(
                    'Nguyễn Quang Tuấn',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        color: const Color(0xFF213660)),
                  )
                ],
              ),
            ),
            const DividerWidget(
              height: 2,
              width: 314,
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 6),
              color: Color(0xfff6f7fb),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trạng thái:',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color(0xFF242424)),
                  ),
                  Text(
                    'Đã hoàn thành',
                    style: appStyles.textHint(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color(0xFF00CC6A)),
                  )
                ],
              ),
            ),
            const DividerWidget(
              height: 2,
              width: 314,
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 6),
              color: Color(0xfff6f7fb),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Sản phẩm đã yêu cầu mẫu',
              style: appStyles.textHint(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF242424)),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                ItemDetailsRequest(),
                ItemDetailsRequest(),
                ItemDetailsRequest(),
                ItemDetailsRequest(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
