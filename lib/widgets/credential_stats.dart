import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import './create_stats.dart';

class CredentialStats extends StatefulWidget {
  final double deviceWidth;
  const CredentialStats(this.deviceWidth, {Key? key}) : super(key: key);

  @override
  State<CredentialStats> createState() => _CredentialStatsState();
}

class _CredentialStatsState extends State<CredentialStats> {
  @override
  Widget build(BuildContext context) {
    var listLength = Provider.of<CredentialProvider>(context).credentialLength;
    var weakPasswordArr =
        Provider.of<CredentialProvider>(context).weakPasswordArr;
    var strongPasswordArr =
        Provider.of<CredentialProvider>(context).strongPasswordArr;
    return Container(
      constraints: BoxConstraints(
          maxWidth: widget.deviceWidth > 700
              ? widget.deviceWidth - widget.deviceWidth / 4
              : widget.deviceWidth),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          createStats(listLength.toString(), 'Passwords', 'bold'),
          createStats(strongPasswordArr.length.toString(), 'Strong', 'slim'),
          createStats(weakPasswordArr.length.toString(), 'Weak', 'slim'),
        ],
      ),
    );
  }
}
