import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/widgets/normal_button.dart';

class ItemOrders extends StatelessWidget {
  const ItemOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Table(
            border: TableBorder.all(width: 1, color: Colors.black12),
            children: [
              _tableRow,
            ],
          ),
          Table(
            border: TableBorder.all(width: 1, color: Colors.black12),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            openDialog(context);
                          },
                          child: SvgPicture.asset('assets/PencilSimple.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: RichText(
                      text: TextSpan(
                          text: 'Đơn giá: ',
                          style: appStyles.textBlack(
                              fontWeight: FontWeight.w400, fontSize: 11),
                          children: [
                            TextSpan(
                                text: '1.000.000đ',
                                style: appStyles.textRed(
                                    fontSize: 11, fontWeight: FontWeight.w600))
                          ])),
                )
              ])
            ],
          ),
          Table(
            border: TableBorder.all(width: 1, color: Colors.black12),
            children: [
              _tableRow3,
            ],
          ),
        ],
      ),
    );
  }
}

openDialog(
    BuildContext context,
    ) {
  showDialog(
    context: context,
    builder: (context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Dialog(
        alignment: Alignment.topCenter,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: SizedBox(
          width: 320,
          height: 356,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(260, 10, 5, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/X.svg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Chỉnh sửa sản phẩm',
                  style: appStyles.textBlack(
                      fontWeight: FontWeight.w700, fontSize: 12),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(),
                width: 270,
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
                      Text(
                        'GLT0910 - Gạch lát tường 0910',
                        style: appStyles.textHint(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/CaretDown.svg'))
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 270,
                height: 35,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                            width: 0.6, color: Colors.black26))),
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      '20',
                      style: appStyles.textBlack(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(),
                width: 270,
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
                      Text(
                        'Thùng',
                        style: appStyles.textBlack(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/CaretDown.svg'))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: RichText(
                          text: TextSpan(
                              text: 'Đơn giá: ',
                              style: appStyles.textBlack(
                                  fontWeight: FontWeight.w400, fontSize: 11),
                              children: [
                                TextSpan(
                                    text: '1.000.000đ',
                                    style: appStyles.textRed(
                                        fontWeight: FontWeight.w600, fontSize: 11))
                              ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: RichText(
                        text: TextSpan(
                            text: 'Chiết khấu: ',
                            style: appStyles.textBlack(
                                fontWeight: FontWeight.w400, fontSize: 11),
                            children: [
                              TextSpan(
                                  text: '5%',
                                  style: appStyles.textRed(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600))
                            ]),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: RichText(
                          text: TextSpan(
                              text: 'Thành tiền: ',
                              style: appStyles.textBlack(
                                  fontSize: 11, fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: '19.000.000đ',
                                    style: appStyles.textRed(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11))
                              ]),
                        )),
                  ],
                ),
              ),
              const NormalButton(
                width: 270,
                height: 40,
                title: 'Chỉnh sửa',
              )
            ],
          ),
        ),
      ),
    ),
  );
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
          TextButton(
            onPressed: () {},
            child: const Text(
              'Xóa',
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 9, color: Colors.red),
            ),
          )
        ],
      ),
    ),
  ),
]);

TableRow _tableRow3 = TableRow(children: [
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
                  text: 'Chiết khấu: ',
                  style: appStyles.textBlack(
                      fontWeight: FontWeight.w400, fontSize: 11),
                  children: [
                    TextSpan(
                      text: '5%',
                      style: appStyles.textRed(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ])),
        ),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: RichText(
        text: TextSpan(
            text: 'Thành tiền: ',
            style:
            appStyles.textBlack(fontWeight: FontWeight.w400, fontSize: 11),
            children: [
              TextSpan(
                  text: '19.000.000đ',
                  style:
                  appStyles.textRed(fontSize: 11, fontWeight: FontWeight.w600))
            ])),
  )
]);
