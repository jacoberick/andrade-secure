import 'package:flutter/material.dart';

class CredentialProvider with ChangeNotifier {
  final List _credentials = [
    {
      'service': 'Amazon',
      'url': 'https://amazon.com',
      'username': 'jacobwhite@email.com',
      'password': 'strongPassword',
      'isStrong': true
    },
    {
      'service': 'Youtube',
      'url': 'https://youtube.com',
      'username': 'jacobwhite@email.com',
      'password': 'strongPassword',
      'isStrong': true
    },
    {
      'service': 'Twitch',
      'url': 'https://twitch.com',
      'username': 'jacobwhite@email.com',
      'password': 'strongPassword',
      'isStrong': true
    },
    {
      'service': 'Walmart',
      'url': 'https://walmart.com',
      'username': 'jacobwhite@email.com',
      'password': 'strongPassword',
      'isStrong': true
    },
    {
      'service': 'Gamestop',
      'url': 'https://gamestop.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
    {
      'service': 'Github',
      'url': 'https://github.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
    {
      'service': 'Codepen',
      'url': 'https://codepen.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
    {
      'service': 'Dribbble',
      'url': 'https://dribbble.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
    {
      'service': 'Audio Technica',
      'url': 'https://audio-technica.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
    {
      'service': 'Porsche',
      'url': 'https://porsche.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
    {
      'service': 'BMW',
      'url': 'https://bmw.com',
      'username': 'jacobwhite@email.com',
      'password': 'weakPassword',
      'isStrong': false
    },
  ];

  get credentialArr => _credentials;
  get credentialLength => _credentials.length;
  get weakPasswordArr => _credentials.where((c) => c['isStrong'] == false);
  get strongPasswordArr => _credentials.where((c) => c['isStrong'] == true);
}
