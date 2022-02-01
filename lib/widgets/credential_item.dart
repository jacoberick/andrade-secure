import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_gifs/loading_gifs.dart';

class CredentialItem extends StatefulWidget {
  final List credentialArr;
  final int arrIndex;

  const CredentialItem(this.credentialArr, this.arrIndex, {Key? key})
      : super(key: key);

  @override
  State<CredentialItem> createState() => _CredentialItemState();
}

class _CredentialItemState extends State<CredentialItem> {
  @override
  Widget build(BuildContext context) {
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
                    image:
                        "${widget.credentialArr[widget.arrIndex]['url']}/favicon.ico",
                    imageErrorBuilder: (context, error, stackTrace) =>
                        const Icon(
                      CupertinoIcons.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.credentialArr[widget.arrIndex]['service'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xfffefefe)),
                  ),
                  Text(
                    widget.credentialArr[widget.arrIndex]['username'],
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
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
  }
}
