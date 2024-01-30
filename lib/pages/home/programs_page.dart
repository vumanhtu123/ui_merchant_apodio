import 'package:flutter/material.dart';
import 'package:merchantapp/pages/items/item_programs.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class Programs extends StatefulWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        leadingIcon1: 'assets/CaretLeft.svg',
        title: 'Các chương trình bán hàng đang tham gia',
      ),
      body: SingleChildScrollView(
        child: ListView(
          primary: false,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ItemPrograms(),
            ItemPrograms(),
          ],
        ),
      ),
    );
  }
}
