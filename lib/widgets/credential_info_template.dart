import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CredentialInfoTemplate extends StatefulWidget {
  final String title;

  const CredentialInfoTemplate(this.title, {Key? key}) : super(key: key);

  @override
  _CredentialInfoTemplateState createState() => _CredentialInfoTemplateState();
}

class _CredentialInfoTemplateState extends State<CredentialInfoTemplate> {
  List<Map> inputInfoArr = [
    {
      'title': 'Service',
    },
    {
      'title': 'URL',
    },
    {
      'title': 'Username',
    },
    {
      'title': 'Password',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xff121212),
        brightness: Brightness.dark,
        leading: CupertinoNavigationBarBackButton(
          color: Color(0xfffc5723),
        ),
      ),
      backgroundColor: const Color(0xff121212),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 20, 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 250),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  widget.title == 'Create'
                      ? 'new credentials by filling out all fields'
                      : 'a credential by updating desired fields',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white38,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: CupertinoFormSection.insetGrouped(
                  margin: const EdgeInsets.all(0),
                  backgroundColor: const Color(0xff121212),
                  children: <Widget>[
                    ...inputInfoArr.map((e) {
                      return CupertinoFormRow(
                        prefix: Text(
                          e['title'],
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                        child: CupertinoTextFormFieldRow(),
                      );
                    }).toList(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 50),
                child: CupertinoButton(
                  color: const Color(0xfffc5723),
                  child: Text(widget.title == 'Create'
                      ? 'Submit Credential'
                      : 'Update Credential'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
