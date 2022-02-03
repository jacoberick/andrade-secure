import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../widgets/credential_info_template.dart';

class CreateCredential extends StatelessWidget {
  const CreateCredential({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function addCredential =
        Provider.of<CredentialProvider>(context).addCredential;
    return CredentialInfoTemplate('Create', addCredential);
  }
}
