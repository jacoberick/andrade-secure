import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/credential_model.dart';

class CredentialInfoTemplate extends StatefulWidget {
  final String title;
  final Function operation;
  final Map credentialObj;

  const CredentialInfoTemplate(this.title, this.operation, this.credentialObj,
      {Key? key})
      : super(key: key);

  @override
  _CredentialInfoTemplateState createState() => _CredentialInfoTemplateState();
}

class _CredentialInfoTemplateState extends State<CredentialInfoTemplate> {
  var credential = Credential();

  void submitForm() {
    credential.id = widget.credentialObj['id'];
    credential.service = widget.credentialObj['service'];
    credential.url = widget.credentialObj['url'];
    credential.username = widget.credentialObj['username'];
    credential.password = widget.credentialObj['password'];
    credential.isStrong =
        widget.credentialObj['password'] == 'strongPassword' ? true : false;
    widget.operation(credential);
    Navigator.pop(context);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    List<Map> inputInfoArr = [
      {
        'title': 'Service',
        'content': widget.credentialObj['service'],
      },
      {
        'title': 'URL',
        'content': widget.credentialObj['url'],
      },
      {
        'title': 'Username',
        'content': widget.credentialObj['username'],
      },
      {
        'title': 'Password',
        'content': widget.credentialObj['password'],
      },
    ];

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color(0xff121212),
        brightness: Brightness.dark,
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
              Form(
                key: _formKey,
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: CupertinoFormSection.insetGrouped(
                    margin: const EdgeInsets.all(0),
                    backgroundColor: const Color(0xff121212),
                    children: <Widget>[
                      ...inputInfoArr.map((e) {
                        return CupertinoFormRow(
                          prefix: Text(
                            e['title'],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                          ),
                          child: CupertinoTextFormFieldRow(
                            initialValue: e['content'],
                            validator: (value) =>
                                (value == null || value.isEmpty)
                                    ? 'Check fields'
                                    : null,
                            onChanged: (value) =>
                                widget.credentialObj[e['title'].toLowerCase()] =
                                    value,
                            textInputAction: e['title'] == 'Password'
                                ? TextInputAction.done
                                : TextInputAction.next,
                            obscureText:
                                e['title'] == 'Password' ? true : false,
                          ),
                        );
                      }).toList(),
                    ],
                  ),
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      submitForm();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
