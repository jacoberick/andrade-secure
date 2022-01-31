import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './widgets/dashboard.dart';

void main() {
  runApp(const AndradeSecure());
}

class AndradeSecure extends StatelessWidget {
  const AndradeSecure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "Andrade Secure",
      home: CupertinoPageScaffold(
        child: Dashboard(),
      ),
    );
  }
}
