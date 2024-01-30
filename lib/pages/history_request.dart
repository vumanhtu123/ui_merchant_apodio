import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/navigator/name_screen.dart';
import 'package:merchantapp/pages/widgets/divider_widget.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class HistoryRequest extends StatefulWidget {
  const HistoryRequest({Key? key}) : super(key: key);

  @override
  State<HistoryRequest> createState() => _HistoryRequestState();
}

class _HistoryRequestState extends State<HistoryRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NormalAppBar2(
          title: 'Lịch sử yêu cầu mẫu',
          leadingIcon1: 'assets/CaretLeft.svg',
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0x0fb7b7b7),
                    spreadRadius: 30,
                    blurRadius: 30,
                    offset: Offset(4, 4)),
              ]),
              child: TextField(
                style: appStyles.textHint(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: const Color(0xFF747475)),
                autofocus: true,
                decoration: InputDecoration(
                    hintText: "Tìm kiếm...",
                    hintStyle: appStyles.textHint(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF747475)),
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: SvgPicture.asset(
                        'assets/icons/ic_search.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(left: 24, bottom: 5),
                    prefixIconConstraints:
                        const BoxConstraints(maxWidth: 13, maxHeight: 13)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const DividerWidget(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  color: Color(0xFFE7E5E5),
                  width: 320,
                ),
                const SizedBox(
                  height: 9,
                ),
                itemHistory('#001982093', 'Đang giao', context),
                const SizedBox(
                  height: 12,
                ),
                const DividerWidget(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  color: Color(0xFFE7E5E5),
                  width: 320,
                ),
                const SizedBox(
                  height: 9,
                ),
                itemHistory('#001982093', 'Đã giao', context),
                const SizedBox(
                  height: 12,
                ),
                const DividerWidget(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  color: Color(0xFFE7E5E5),
                  width: 320,
                ),
                const SizedBox(
                  height: 9,
                ),
                itemHistory('#001982093', 'Đã huỷ', context),
                const SizedBox(
                  height: 12,
                ),
                const DividerWidget(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  color: Color(0xFFE7E5E5),
                  width: 320,
                ),
              ],
            )
          ],
        ));
  }
}

checkStatus(String status) {
  if (status == 'Đang giao') {
    return const Color(0xFF00CC6A);
  } else if (status == 'Đã giao') {
    return const Color(0xFF325EA5);
  } else {
    return const Color(0xFFCB473E);
  }
}

Widget itemHistory(String code, String status, BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, NameScreen.detailsRequestScreen);
          print('details');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mã yêu cầu: $code',
                  style: appStyles.textHint(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF242424)),
                ),
                Text(
                  '01/12/2021 - 10:01:09',
                  style: appStyles.textHint(
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: const Color(0xFF747475)),
                )
              ],
            ),
            Text(
              status,
              style: appStyles.textHint(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: checkStatus(status)),
            )
          ],
        ),
      ),
    );
