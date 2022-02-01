import 'package:andrade_secure/providers/search_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/credential_provider.dart';

import './credential_item.dart';

class CredentailList extends StatelessWidget {
  const CredentailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stores credential info and sorts it alphabetically
    var searchParamInfo = Provider.of<SearchProvider>(context).searchParamInfo;
    var credentialArr = Provider.of<CredentialProvider>(context).credentialArr;
    credentialArr.sort(
        (a, b) => a["service"].toString().compareTo(b["service"].toString()));

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        itemCount: credentialArr.length,
        itemBuilder: (context, i) {
          return CredentialItem(credentialArr, i);
        },
      ),
    );
  }
}
