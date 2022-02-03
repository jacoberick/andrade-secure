import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../widgets/credential_info_template.dart';

class EditCredential extends StatelessWidget {
  const EditCredential({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function updateCredential =
        Provider.of<CredentialProvider>(context).updateCredential;
    return CredentialInfoTemplate('Edit', updateCredential);
  }
}
