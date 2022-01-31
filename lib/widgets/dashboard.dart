import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  createStats() {
    return Column(
      children: const [
        Text('58'),
        Text('Passwords'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return Container(
      color: const Color(0xfffc5723),
      padding: EdgeInsets.fromLTRB(20, statusBarHeight, 20, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Passwords',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
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
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                createStats(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
