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
      'service': 'Walmart',
      'url': 'https://walmart.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Gamestop',
      'url': 'https://gamestop.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Github',
      'url': 'https://github.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Codepen',
      'url': 'https://codepen.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Dribbble',
      'url': 'https://dribbble.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Audio Technica',
      'url': 'https://audio-technica.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'Porsche',
      'url': 'https://porsche.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
    {
      'service': 'BMW',
      'url': 'https://bmw.com',
      'username': 'jacobwhite@email.com',
      'password': 'apassword123',
    },
  ];

  get credentialArr => _credentails;
  get credentialLength => _credentails.length;
}
