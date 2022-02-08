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
    Function getCredentialById =
        Provider.of<CredentialProvider>(context).getCredentialById;

    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final selectedCredentialInstance = getCredentialById(args['id']);
    print(selectedCredentialInstance[0].id);

    toObj() {
      return {
        'id': selectedCredentialInstance[0].id,
        'service': selectedCredentialInstance[0].service,
        'url': selectedCredentialInstance[0].url,
        'username': selectedCredentialInstance[0].username,
        'password': selectedCredentialInstance[0].password,
        'isStrong': selectedCredentialInstance[0].isStrong,
      };
    }

    final selectedCredentialObj = toObj();

    return CredentialInfoTemplate(
        'Edit', updateCredential, selectedCredentialObj);
  }
}
