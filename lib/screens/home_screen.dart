import 'package:cooking_share/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:cooking_share/blocs/authentication_bloc/authentication_event.dart';
import 'package:cooking_share/theme/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  const HomeScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {},
        ),
        title: RichText(
          text: TextSpan(
            style: Theme
                .of(context)
                .textTheme
                .title
                .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Cooking",
                style: TextStyle(color: ksecondaryColor),
              ),
              TextSpan(
                text: "Share",
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context)
                  .add(AuthenticationLoggedOut());
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        height: 75,
        width: double.infinity,
        // double.infinity means it cove the available width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(0.11),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Following.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Glyph.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/person.svg"),
              onPressed: () {},
            ),
          ],
        ),
      ),
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
          Center(
            child: Text("Hello, ${user.email}"),
          ),
        ],
      ),
    );
  }
}
