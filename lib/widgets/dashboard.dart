import 'package:andrade_secure/providers/credential_provider.dart';
import 'package:andrade_secure/providers/search_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _activeSearch = false;

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
    Function passSearchParams =
        Provider.of<SearchProvider>(context).updateSearchParams;
    void _handleOnTapSearch() {
      setState(() {
        _activeSearch = !_activeSearch;
        _activeSearch ? passSearchParams('') : null;
      });
    }

    return Container(
      padding: EdgeInsets.fromLTRB(20, statusBarHeight, 20, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfffc5723),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _activeSearch
                  ? Expanded(
                      child: CupertinoSearchTextField(
                      placeholder: 'Search by Service',
                      style: const TextStyle(color: Colors.white),
                      autofocus: true,
                      backgroundColor: const Color(0xff121212),
                      onChanged: (value) => passSearchParams(value),
                    ))
                  : const Padding(
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
                  _activeSearch ? CupertinoIcons.xmark : CupertinoIcons.search,
                  color: const Color(0xff121212),
                ),
                onPressed: () => _handleOnTapSearch(),
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
