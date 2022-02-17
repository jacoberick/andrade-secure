import 'package:andrade_secure/widgets/title_searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './credential_stats.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

    final double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, statusBarHeight, 20, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfffc5723),
      ),
      child: Column(
        children: [
          TitleSearchBar(deviceWidth),
          CredentialStats(deviceWidth),
        ],
      ),
    );
  }
}
