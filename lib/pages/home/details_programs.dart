import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class DetailsPrograms extends StatefulWidget {
  const DetailsPrograms({Key? key}) : super(key: key);

  @override
  State<DetailsPrograms> createState() => _DetailsProgramsState();
}

class _DetailsProgramsState extends State<DetailsPrograms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: 'assets/CaretLeft.svg',
        title: 'Chi tiết chương trình bán hàng',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Chính sách MUA 3 TẶNG 1',
                style: appStyles.textHint(
                    color: const Color(0xFF000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Thời gian bắt đầu: 14/10/2021',
                style: appStyles.textHint(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              Text(
                'Thời gian kết thúc: 30/03/2022',
                style: appStyles.textHint(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Nội dung giới thiệu chương trình',
                style: appStyles.textHint(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Các nhà lãnh đạo luôn là người đi tiên phong. Họ tạo điều kiện cho sự thay đổi diễn ra, thay vì phản ứng với thay đổi. Tương lai cần đến sự lãnh đạo công ty với các kỹ năng lồng ghép nhiều sự kiện không lường trước và có vẻ đa dạng vào trong quá trình lập kế hoạch. Mỗi một tổ chức phải lập kế hoạch cho các thay đổi cần thiết để đạt được mục tiêu cuối cùng của mình. Lập kế hoạch một cách hiệu quả sẽ giúp cho tổ chức thích ứng với thay đổi nhờ xác định được các cơ hội và ngăn ngừa được các vấn đề vướng mắc. Lập kế hoạch sẽ định hướng cho các chức năng quản lý khác và định hướng để làm việc theo nhóm. Lập kế hoạch sẽ giúp cải thiện quá trình ra quyết định. Tất cả các cấp quản lý đều phải tham gia vào quá trình lập kế hoạch.',
                style: appStyles.textHint(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF242424)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Dòng sản phẩm/sản phẩm áp dụng cho chương trình',
                style: appStyles.textHint(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 23.0,
                  mainAxisSpacing: 11.0,
                ),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 95,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Anh1.png',
                          width: 95,
                          height: 95,
                        ),
                        Text(
                          'Gạch lát tường 0910',
                          style: appStyles.textHint(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF242424)),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 6,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Tỷ lệ hoàn thành của đại lý',
                style: appStyles.textHint(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFF919091))),
                    child: SizedBox(
                        width: 44,
                        height: 27,
                        child: Image.asset('assets/logo.png')),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'Đại lý Hoàng Hà - ',
                                style: appStyles.textHint(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                  text: 'Vĩnh Phúc',
                                  style: appStyles.textHint(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red))
                            ])),
                        SizedBox(
                          width: 150,
                          child: RichText(
                              text: TextSpan(
                                  text: 'Tỷ lệ hoàn thành:  ',
                                  style: appStyles.textHint(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: const Color(0xFF747475)),
                                  children: [
                                TextSpan(
                                    text: '67%',
                                    style: appStyles.textHint(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red))
                              ])),
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Doanh số theo dõi \ntheo sản lượng: ',
                                style: appStyles.textHint(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color(0xFF747475)),
                                children: [
                              TextSpan(
                                  text: '89.980.000đ',
                                  style: appStyles.textHint(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red))
                            ]))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            color: Color(0xFFCB473E),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF747475), blurRadius: 4),
                            ]),
                        height: 68,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4)),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Color(0xFF9E9EA1), blurRadius: 2)
                            ]),
                        height: 140,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: SizedBox(
                          width: 120,
                          height: 32,
                          child: Text(
                            'Chính sách thưởng khi đạt chỉ tiêu',
                            style: appStyles.textHint(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: SvgPicture.asset(
                          'assets/gift.svg',
                          width: 99,
                          height: 40,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 55),
                    child: Container(
                      color: const Color(0xFFFFCC42),
                      width: 110,
                      height: 25,
                      child: Center(
                        child: Text(
                          'Thưởng tiền mặt',
                          style: appStyles.textHint(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tỷ lệ hoàn thành 60 -> 80%: Thưởng 200 triệu',
                          style: appStyles.textHint(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Text(
                            'Tỷ lệ hoàn thành: 81 -> 90%: Thưởng 300 triệu',
                            style: appStyles.textHint(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          'Tỷ lệ hoàn thành: 91 -> 100%: Thưởng 6 tỷ',
                          style: appStyles.textHint(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tableItem(String img, String tittle) => Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(child: Image.asset(img)),
        const SizedBox(height: 5),
        Text(
          tittle,
          style: appStyles.textHint(fontSize: 10, fontWeight: FontWeight.w400),
        ),
      ],
    );
