import 'package:flutter/cupertino.dart';

import '../widgets/credential_info_template.dart';

class CreateCredential extends StatelessWidget {
  const CreateCredential({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CredentialInfoTemplate('Create');
  }
}
