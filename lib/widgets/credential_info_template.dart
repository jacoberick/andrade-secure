import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CredentialInfoTemplate extends StatefulWidget {
  final String title;

  const CredentialInfoTemplate(this.title, {Key? key}) : super(key: key);

  @override
  _CredentialInfoTemplateState createState() => _CredentialInfoTemplateState();
}

class _CredentialInfoTemplateState extends State<CredentialInfoTemplate> {
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xff121212),
        brightness: Brightness.dark,
      ),
      backgroundColor: const Color(0xff121212),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, statusBarHeight, 20, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoButton(
              child: const Icon(
                CupertinoIcons.arrow_left_circle,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Text(widget.title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
