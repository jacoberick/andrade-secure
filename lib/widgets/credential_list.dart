import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../providers/credential_provider.dart';

class CredentailList extends StatelessWidget {
  const CredentailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var credentialArr = Provider.of<CredentialProvider>(context).credentialArr;
    print(credentialArr[0]['url']);

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        itemCount: credentialArr.length,
        itemBuilder: (context, i) {
          return Image(
            image: NetworkImage("${credentialArr[i]['url']}/favicon.ico"),
          );
        },
      ),
    );
  }
}
