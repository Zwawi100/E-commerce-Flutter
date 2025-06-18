import 'package:finalproject/Features/Profile/View/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constant.dart';
import '../../View_Model/search_view_model.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<SearchViewModel>(context);
    return vm.isSearching
        ? Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    hintText: "Searching ...",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kSecondaryTextColor)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kSecondaryTextColor))),
              )),
              Spacer(),
              IconButton(onPressed: vm.showSearch, icon: Icon(Icons.search))
            ],
          )
        : Row(
            children: [
              Spacer(),
              IconButton(onPressed: vm.showSearch, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, ProfilePage.routeName);
                  },
                  icon: Icon(Icons.person))
            ],
          );
  }
}
