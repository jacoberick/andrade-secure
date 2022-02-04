import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../widgets/credential_info_template.dart';

class CreateCredential extends StatefulWidget {
  const CreateCredential({Key? key}) : super(key: key);

  @override
  State<CreateCredential> createState() => _CreateCredentialState();
}

class _CreateCredentialState extends State<CreateCredential> {
  var uuid = const Uuid();

  @override
  Widget build(BuildContext context) {
    var newCredential = {
      'id': uuid.v4(),
      'service': '',
      'url': '',
      'username': '',
      'password': '',
      'isStrong': false,
    };
    Function addCredential =
        Provider.of<CredentialProvider>(context).addCredential;
    return CredentialInfoTemplate('Create', addCredential, newCredential);
  }
}
