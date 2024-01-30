import 'package:flutter/material.dart';
import 'package:merchantapp/common/app_styles.dart';

class ItemDetailsRequest extends StatelessWidget {
  const ItemDetailsRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Table(
            border: TableBorder.all(width: 1, color: const Color(0xFFE5EDFD)),
            children: [
              _tableRow,
            ],
          ),
          Table(
            border: TableBorder.all(width: 1, color: const Color(0xFFE5EDFD)),
            children: [
              TableRow(children: [
                SizedBox(
                  width: 157,
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: RichText(
                            text: TextSpan(
                                text: 'Số lượng: ',
                                style: appStyles.textBlack(
                                    fontWeight: FontWeight.w400, fontSize: 11),
                                children: [
                              TextSpan(
                                  text: '20 ',
                                  style: appStyles.textBlack(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                        text: 'thùng',
                                        style: appStyles.textBlack(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11))
                                  ])
                            ])),
                      ),
                    ],
                  ),
                ),
              ])
            ],
          ),
        ],
      ),
    );
  }
}

TableRow _tableRow = TableRow(children: [
  Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Container(
      color: const Color(0xFFF6F9FF),
      width: 314,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'GLT0910 - Gạch lát tường 0910',
            style:
                appStyles.textBlack(fontSize: 11, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  ),
]);
