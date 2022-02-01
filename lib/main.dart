import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:andrade_secure/widgets/credential_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import './widgets/dashboard.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CredentialProvider(),
      child: const AndradeSecure(),
    ),
  );
}

class AndradeSecure extends StatelessWidget {
  const AndradeSecure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "Andrade Secure",
      home: CupertinoPageScaffold(
        backgroundColor: const Color(0xff121212),
        child: Column(
          children: const [
            Dashboard(),
            CredentailList(),
          ],
        ),
      ),
    );
  }
}
