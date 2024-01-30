import 'package:flutter/material.dart';
import 'package:merchantapp/pages/items/item_ordering_main.dart';
import 'package:merchantapp/pages/items/items_news_sale.dart';
import 'package:merchantapp/pages/widgets/appbar_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageNavState();
}

class _HomePageNavState extends State<HomePage> {
  int currentIndex = 0;
  var selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySliverAppBar(expandedHeight: 150),
            const SizedBox(
              height: 90,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                'Các chương trình bán hàng đang tham gia',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      selectindex = index;
                    });
                  },
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    var scale = selectindex == index ? 1.1 : 0.8;
                    return TweenAnimationBuilder(
                        tween: Tween(begin: scale, end: scale),
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 300),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: scale,
                            child: child,
                          );
                        },
                        child: const News());
                  }),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 23,vertical: 20),
              child: Text(
                'Các đơn hàng đang xử lý',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            ListView(
              padding: const EdgeInsets.only(left: 7),
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ItemOdering(),
                ItemOdering(),
              ],
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
