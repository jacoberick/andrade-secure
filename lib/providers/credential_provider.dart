import 'package:flutter/material.dart';

class CredentialProvider with ChangeNotifier {
  final List _credentails = [
    {
      'service': 'Amazon',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Youtube',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Twitch',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    }
  ];

  get credentials => _credentails;
  get credentialLength => _credentails.length;
}
