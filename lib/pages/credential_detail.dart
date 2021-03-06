import 'dart:async';

import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CredentialDetail extends StatelessWidget {
  const CredentialDetail({Key? key}) : super(key: key);

  labelAndContentConstructor(label, content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xfffc5723),
          ),
        ),
        Text(
          content,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Function deleteCredential =
        Provider.of<CredentialProvider>(context).deleteCredential;
    Function getCredentialById =
        Provider.of<CredentialProvider>(context).getCredentialById;
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final selectedCredential = getCredentialById(args['id']);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0xff121212),
        leading: CupertinoButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.left_chevron,
            color: Color(0xfffc5723),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 20, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${selectedCredential[0].service} Credentials",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            selectedCredential[0].isStrong
                ? const Text(
                    'Secure',
                    style: TextStyle(color: Colors.teal),
                  )
                : const Text(
                    'Vulnerable',
                    style: TextStyle(color: Colors.red),
                  ),
            const SizedBox(
              height: 50,
            ),
            labelAndContentConstructor(
                'username', selectedCredential[0].username),
            const SizedBox(
              height: 20,
            ),
            labelAndContentConstructor(
                'password', selectedCredential[0].password),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: CupertinoButton(
                          child: const Text(
                            'Edit',
                            style: TextStyle(fontSize: 12),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/edit',
                                arguments: {'id': selectedCredential[0].id});
                          },
                          color: const Color(0xfffc5723),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: CupertinoButton(
                          child: const Text(
                            'Delete',
                            style: TextStyle(fontSize: 12),
                          ),
                          color: Colors.red,
                          onPressed: () {
                            Navigator.pop(context);
                            Timer(const Duration(milliseconds: 500),
                                () => deleteCredential(args['id']));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff121212),
    );
  }
}
