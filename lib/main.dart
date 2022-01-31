import 'package:andrade_secure/providers/credential_provider.dart';
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
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "Andrade Secure",
      home: CupertinoPageScaffold(
        child: Dashboard(),
      ),
    );
  }
}
