import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/credential_provider.dart';

class CredentailList extends StatelessWidget {
  const CredentailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var credentialArr = Provider.of<CredentialProvider>(context).credentialArr;

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        itemCount: credentialArr.length,
        itemBuilder: (context, i) {
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff121212),
                  ),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 20),
                  child: Image(
                    height: 35,
                    image:
                        NetworkImage("${credentialArr[i]['url']}/favicon.ico"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      credentialArr[i]['service'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      credentialArr[i]['username'],
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade700),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
