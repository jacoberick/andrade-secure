import 'package:flutter/cupertino.dart';

import 'package:andrade_secure/widgets/credential_list.dart';
import '../widgets/dashboard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xff121212),
      child: Column(
        children: const [
          Dashboard(),
          CredentailList(),
        ],
      ),
    );
  }
}
