import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cooking_share/routes/router.dart';
import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/data.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/widgets/card_tags.dart';
import 'package:cooking_share/widgets/dark_overlay.dart';
import 'package:cooking_share/widgets/heading_row.dart';
import 'package:cooking_share/widgets/base_button.dart';
import 'package:cooking_share/widgets/spaces.dart';

class FoodDetailsScreen extends StatelessWidget {
  final FoodDetails foodDetails;

  FoodDetailsScreen({@required this.foodDetails});

  TextStyle addressTextStyle = Styles.customNormalTextStyle(
    color: AppColors.accentText,
    fontSize: Sizes.TEXT_SIZE_14,
  );

  TextStyle openingTimeTextStyle = Styles.customNormalTextStyle(
    color: Colors.red,
    fontSize: Sizes.TEXT_SIZE_14,
  );

  TextStyle subHeadingTextStyle = Styles.customTitleTextStyle(
    color: AppColors.headingText,
    fontWeight: FontWeight.w600,
    fontSize: Sizes.TEXT_SIZE_18,
  );

  BoxDecoration fullDecorations = Decorations.customHalfCurvedButtonDecoration(
    color: Colors.black.withOpacity(0.1),
    topleftRadius: 24,
    bottomleftRadius: 24,
    topRightRadius: 24,
    bottomRightRadius: 24,
  );
  BoxDecoration leftSideDecorations =
      Decorations.customHalfCurvedButtonDecoration(
    color: Colors.black.withOpacity(0.1),
    topleftRadius: 24,
    bottomleftRadius: 24,
  );

  BoxDecoration rightSideDecorations =
      Decorations.customHalfCurvedButtonDecoration(
    color: Colors.black.withOpacity(0.1),
    topRightRadius: 24,
    bottomRightRadius: 24,
  );

  @override
  Widget build(BuildContext context) {
    var heightOfStack = MediaQuery.of(context).size.height / 2.8;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Positioned(
                          child: Image.asset(
                            foodDetails.imagePath,
                            width: MediaQuery.of(context).size.width,
                            height: heightOfStack,
                            fit: BoxFit.cover,
                          ),
                        ),
                        DarkOverLay(gradient: Gradients.foodDetailsGradient),
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.only(
                              right: Sizes.MARGIN_16,
                              top: Sizes.MARGIN_16,
                            ),
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () => AppRouter.navigator.pop(),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: Sizes.MARGIN_16,
                                      right: Sizes.MARGIN_16,
                                    ),
                                    child: Image.asset(ImagePath.arrowBackIcon),
                                  ),
                                ),
                                Spacer(flex: 1),
                                SpaceW20(),
                                InkWell(
                                  child: Image.asset(ImagePath.bookmarksIcon,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      child: Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    foodDetails.foodName,
                                    textAlign: TextAlign.left,
                                    style: Styles.customTitleTextStyle(
                                      color: AppColors.headingText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: Sizes.TEXT_SIZE_20,
                                    ),
                                  ),
                                  SizedBox(width: 4.0),
                                  CardTags(
                                    title: foodDetails.category,
                                    decoration: BoxDecoration(
                                      gradient: Gradients.secondaryGradient,
                                      boxShadow: [
                                        Shadows.secondaryShadow,
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                foodDetails.detail,
                                style: addressTextStyle,
                              ),
                            ],
                          ),
                          SpaceH24(),
                          HeadingRow(
                            title: StringConst.MENU_AND_PHOTOS,
                            number: StringConst.SEE_ALL_32,
                            onTapOfNumber: () => AppRouter.navigator
                                .pushNamed(AppRouter.menuPhotosScreen),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 12.0),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: Image.asset(
                                    menuPhotosImagePaths[index],
                                    fit: BoxFit.fill,
                                    width: 160,
                                  ),
                                );
                              },
                            ),
                          ),
                          SpaceH24(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              BaseButton(
                'Buy',
                buttonHeight: 65,
                buttonWidth: MediaQuery.of(context).size.width,
                decoration: Decorations.customHalfCurvedButtonDecoration(
                  topleftRadius: Sizes.RADIUS_24,
                  topRightRadius: Sizes.RADIUS_24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
