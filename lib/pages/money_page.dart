import 'package:flutter/material.dart';
import 'package:merchantapp/pages/widgets/nomar_app_bar2.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NormalAppBar2(
          title: 'Công nợ',
          leadingIcon1: '',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
              )
            ],
          ),
        ));
  }
}
