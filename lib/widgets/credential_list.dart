import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xfffefefe),
                      ),
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: FadeInImage.assetNetwork(
                            placeholder: cupertinoActivityIndicator,
                            image: "${credentialArr[i]['url']}/favicon.ico"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          credentialArr[i]['service'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffefefe)),
                        ),
                        Text(
                          credentialArr[i]['username'],
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade400),
                        ),
                      ],
                    ),
                  ],
                ),
                const CupertinoButton(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    CupertinoIcons.ellipsis,
                    color: Colors.white,
                  ),
                  onPressed: null,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
