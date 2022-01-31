import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../providers/credential_provider.dart';

class CredentailList extends StatelessWidget {
  const CredentailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var credentialArr = Provider.of<CredentialProvider>(context).credentialArr;

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: credentialArr.length,
        itemBuilder: (context, index) {
          return Text('hi');
        },
      ),
    );
  }
}
