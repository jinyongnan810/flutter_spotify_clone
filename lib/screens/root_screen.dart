import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Container(
              color: Colors.green,
              width: 288,
              height: double.infinity,
            )
          ],
        )),
        Container(
          width: double.infinity,
          height: 84,
          color: Colors.blue,
        )
      ]),
    );
  }
}
