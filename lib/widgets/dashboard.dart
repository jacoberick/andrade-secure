import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:andrade_secure/widgets/title_searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './create_stats.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;
    var listLength = Provider.of<CredentialProvider>(context).credentialLength;
    var weakPasswordArr =
        Provider.of<CredentialProvider>(context).weakPasswordArr;
    var strongPasswordArr =
        Provider.of<CredentialProvider>(context).strongPasswordArr;

    return Container(
      padding: EdgeInsets.fromLTRB(20, statusBarHeight, 20, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfffc5723),
      ),
      child: Column(
        children: [
          const TitleSearchBar(),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                createStats(listLength.toString(), 'Passwords', 'strong'),
                createStats(
                    strongPasswordArr.length.toString(), 'Strong', 'weak'),
                createStats(
                    weakPasswordArr.length.toString(), 'Mediocre', 'weak'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
