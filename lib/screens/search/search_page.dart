import 'package:cooking_share/theme/app_colors.dart';
import 'package:cooking_share/widgets/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: TabsPage(selectedIndex: 1),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: ksecondaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: SvgPicture.asset("assets/icons/search.svg"),
                  hintText: "Search Here",
                  hintStyle: TextStyle(color: ksecondaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
