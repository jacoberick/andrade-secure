import 'package:flutter/material.dart';
import '../models/credential_model.dart';

class CredentialProvider with ChangeNotifier {
  final List<Credential> _credentials = [
    Credential(
      id: '191b75fb-17f7-4895-8db7-1d20dd696426',
      service: 'Amazon',
      url: 'https://amazon.com',
      username: 'jacobwhite@email.com',
      password: 'strongPassword',
      isStrong: true,
    ),
    Credential(
      id: '91bbbc48-1cd2-4af9-b689-a438a39b9d87',
      service: 'Youtube',
      url: 'https://youtube.com',
      username: 'jacobwhite@email.com',
      password: 'strongPassword',
      isStrong: true,
    ),
    Credential(
      id: 'f2966e8d-d9c9-45f8-aa40-e33a31b57495',
      service: 'Twitch',
      url: 'https://twitch.com',
      username: 'jacobwhite@email.com',
      password: 'strongPassword',
      isStrong: true,
    ),
    Credential(
      id: '50643527-580e-4e7e-924f-a6105727b1c5',
      service: 'Walmart',
      url: 'https://walmart.com',
      username: 'jacobwhite@email.com',
      password: 'strongPassword',
      isStrong: true,
    ),
    Credential(
      id: 'effb39f4-8249-493f-8835-e48ccefe23f5',
      service: 'Gamestop',
      url: 'https://gamestop.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
    Credential(
      id: '0cfbe2d8-e0af-495a-ad2c-094663e799cd',
      service: 'Github',
      url: 'https://github.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
    Credential(
      id: '5eb6d539-2c3e-4003-8447-50ad36a6a84a',
      service: 'Codepen',
      url: 'https://codepen.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
    Credential(
      id: '8619ad16-48bc-4344-b19d-a2a56a38ef44',
      service: 'Dribbble',
      url: 'https://dribbble.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
    Credential(
      id: '298244d1-c470-4ef2-8e05-7a57a306ffbb',
      service: 'Audio Technica',
      url: 'https://audio-technica.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
    Credential(
      id: '1bf83a6e-7c92-4bc8-b4d5-938251ce0397',
      service: 'Porsche',
      url: 'https://porsche.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
    Credential(
      id: 'a8611d08-d5a8-4ca6-a2e1-8a2bfeaa8105',
      service: 'BMW',
      url: 'https://bmw.com',
      username: 'jacobwhite@email.com',
      password: 'weakPassword',
      isStrong: false,
    ),
  ];

  void addCredential(obj) {
    credentialArr.add(obj);
    notifyListeners();
  }

  void updateCredential(index, obj) {
    return;
  }

  void deleteCredential(id) {
    credentialArr.removeWhere((cred) => cred[id] == id);
    notifyListeners();
  }

  get credentialArr => _credentials;
  get credentialLength => _credentials.length;
  get weakPasswordArr => _credentials.where(
        (c) => c.isStrong == false,
      );
  get strongPasswordArr => _credentials.where((c) => c.isStrong == true);
}
