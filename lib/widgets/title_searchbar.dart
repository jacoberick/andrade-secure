import 'package:andrade_secure/providers/search_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleSearchBar extends StatefulWidget {
  const TitleSearchBar({Key? key}) : super(key: key);

  @override
  State<TitleSearchBar> createState() => _TitleSearchBarState();
}

class _TitleSearchBarState extends State<TitleSearchBar> {
  bool _activeSearch = false;

  @override
  Widget build(BuildContext context) {
    Function passSearchParams =
        Provider.of<SearchProvider>(context).updateSearchParams;
    void _handleOnTapSearch() {
      setState(() {
        _activeSearch = !_activeSearch;
        _activeSearch ? passSearchParams('') : null;
      });
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: AnimatedCrossFade(
            firstChild: const Padding(
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
            secondChild: CupertinoSearchTextField(
              placeholder: 'Search by Service',
              style: const TextStyle(color: Colors.white),
              autofocus: true,
              backgroundColor: const Color(0xff121212),
              onChanged: (value) => passSearchParams(value),
            ),
            crossFadeState: _activeSearch
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 250),
          ),
        ),
        CupertinoButton(
          child: Icon(
            _activeSearch ? CupertinoIcons.xmark : CupertinoIcons.search,
            color: const Color(0xff121212),
          ),
          onPressed: () => _handleOnTapSearch(),
        ),
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.add,
            color: Color(0xff121212),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
