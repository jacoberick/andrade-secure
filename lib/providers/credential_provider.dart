import 'package:flutter/material.dart';

class CredentialProvider with ChangeNotifier {
  final List _credentails = [
    {
      'service': 'Amazon',
      'url': 'https://amazon.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Youtube',
      'url': 'https://youtube.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Twitch',
      'url': 'https://twitch.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Amazon',
      'url': 'https://amazon.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Youtube',
      'url': 'https://youtube.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Twitch',
      'url': 'https://twitch.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Amazon',
      'url': 'https://amazon.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Youtube',
      'url': 'https://youtube.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Twitch',
      'url': 'https://twitch.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Twitch',
      'url': 'https://twitch.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Amazon',
      'url': 'https://amazon.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Youtube',
      'url': 'https://youtube.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Twitch',
      'url': 'https://twitch.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
  ];

  get credentialArr => _credentails;
  get credentialLength => _credentails.length;
}
