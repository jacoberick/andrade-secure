import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  createStats(numb, type, emphasise) {
    return Column(
      children: [
        Text(
          numb,
          style: TextStyle(
              fontSize: emphasise == 'strong' ? 50 : 25,
              fontWeight: FontWeight.bold),
        ),
        Text(
          type,
          style: const TextStyle(fontSize: 15),
        ),
        Container(
          height: 15,
          width: emphasise == 'strong' ? 110 : 80,
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 1.5,
              ),
              bottom: BorderSide(
                width: 1.5,
              ),
              right: BorderSide(
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;
    var listLength = Provider.of<CredentialProvider>(context).credentialLength;

    return Container(
      color: const Color(0xfffc5723),
      padding: EdgeInsets.fromLTRB(20, statusBarHeight, 20, 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Andrade Secure',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Color(0xff121212),
                  ),
                ),
              ),
              CupertinoButton(
                child: Icon(
                  CupertinoIcons.search,
                  color: Color(0xff121212),
                ),
                onPressed: null,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                createStats(listLength.toString(), 'Passwords', 'strong'),
                createStats('47', 'Strong', 'weak'),
                createStats('11', 'Mediocre', 'weak'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
