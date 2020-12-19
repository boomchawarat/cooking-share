import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/widgets/base_button.dart';
import 'package:cooking_share/widgets/spaces.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const int TAB_NO = 3;

  ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: Sizes.ELEVATION_0,
          centerTitle: true,
          title: Text(
            'Profile',
            style: Styles.customTitleTextStyle(
              color: AppColors.headingText,
              fontWeight: FontWeight.w600,
              fontSize: Sizes.TEXT_SIZE_22,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: Sizes.MARGIN_8),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SpaceH48(),
                  Text('John Williams', style: Styles.foodyBiteTitleTextStyle),
                  SpaceH8(),
                  Text('john.williams@gmail.com',
                      style: Styles.foodyBiteSubtitleTextStyle),
                ],
              ),
              SpaceH24(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BaseButton(
                    'Edit Profile',
                    onTap: () => AppRouter.navigator
                        .pushNamed(AppRouter.editProfileScreen),
                    buttonWidth: MediaQuery.of(context).size.width / 3,
                    buttonHeight: Sizes.HEIGHT_50,
                  ),
                  SpaceW16(),
                  BaseButton(
                    'Settings',
                    onTap: () =>
                        AppRouter.navigator.pushNamed(AppRouter.settingsScreen),
                    buttonWidth: MediaQuery.of(context).size.width / 3,
                    buttonHeight: Sizes.HEIGHT_50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      border: Border.all(color: AppColors.indigo),
                      borderRadius: BorderRadius.all(
                        Radius.circular(Sizes.RADIUS_8),
                      ),
                    ),
                    buttonTextStyle: Styles.customNormalTextStyle(
                      color: AppColors.accentText,
                      fontSize: Sizes.TEXT_SIZE_16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
