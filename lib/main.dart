import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:andrade_secure/providers/search_provider.dart';
import 'package:andrade_secure/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import './pages/create.dart';
import './pages/edit.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CredentialProvider()),
        ChangeNotifierProvider(create: (context) => SearchProvider()),
      ],
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
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/create': (context) => const CreateCredential(),
        '/edit': (context) => const EditCredential(),
      },
    );
  }
}
