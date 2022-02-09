import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:provider/provider.dart';

class CredentialItem extends StatelessWidget {
  final List credentialArr;
  final int arrIndex;

  const CredentialItem(this.credentialArr, this.arrIndex, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function deleteCredential =
        Provider.of<CredentialProvider>(context).deleteCredential;

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/detail',
                arguments: {'id': credentialArr[arrIndex].id}),
            child: Row(
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
                      image: "${credentialArr[arrIndex].url}/favicon.ico",
                      imageErrorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          CupertinoIcons.circle,
                          color: Colors.black,
                        );
                      },
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          credentialArr[arrIndex].service,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffefefe)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: credentialArr[arrIndex].isStrong
                              ? const Icon(
                                  CupertinoIcons.lock_shield_fill,
                                  color: Colors.teal,
                                  size: 20,
                                )
                              : const Icon(
                                  CupertinoIcons.lock_slash_fill,
                                  color: Colors.red,
                                  size: 15,
                                ),
                        )
                      ],
                    ),
                    Text(
                      credentialArr[arrIndex].username,
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CupertinoButton(
            padding: const EdgeInsets.only(left: 16),
            child: const Icon(
              CupertinoIcons.ellipsis,
              color: Colors.white,
            ),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) => CupertinoActionSheet(
                  title: const Text('Quick Actions'),
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit',
                            arguments: {'id': credentialArr[arrIndex].id});
                      },
                      child: const Text('Edit Credential'),
                    ),
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        deleteCredential(credentialArr[arrIndex].id);
                        Navigator.pop(context);
                      },
                      child: const Text('Delete Credential'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
