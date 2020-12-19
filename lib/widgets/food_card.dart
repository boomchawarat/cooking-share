import 'package:cooking_share/values/values.dart';
import 'package:flutter/material.dart';

import 'card_tags.dart';

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final String category;
  final String description;
  final GestureTapCallback onTap;
  final bool bookmark;
  final double tagRadius;
  final double width;
  final double cardHeight;
  final double imageHeight;
  final double cardElevation;
  final List<String> followersImagePath;

  FoodCard({
    this.imagePath,
    this.cardTitle,
    this.category,
    this.description,
    this.width = 340.0,
    this.cardHeight = 280.0,
    this.imageHeight = 180.0,
    this.tagRadius = 8.0,
    this.onTap,
    this.bookmark = false,
    this.cardElevation = 4.0,
    this.followersImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: cardHeight,
        child: Card(
          elevation: cardElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        imagePath,
                        width: MediaQuery.of(context).size.width,
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: Sizes.MARGIN_16,
                        vertical: Sizes.MARGIN_16,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                cardTitle,
                                textAlign: TextAlign.left,
                                style: Styles.customTitleTextStyle(
                                  color: AppColors.headingText,
                                  fontWeight: FontWeight.w600,
                                  fontSize: Sizes.TEXT_SIZE_20,
                                ),
                              ),
                              SizedBox(width: Sizes.WIDTH_4),
                              CardTags(
                                title: category,
                                decoration: BoxDecoration(
                                  gradient: Gradients.secondaryGradient,
                                  boxShadow: [
                                    Shadows.secondaryShadow,
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(tagRadius),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: Text(
                                    description,
                                    textAlign: TextAlign.left,
                                    style: Styles.customNormalTextStyle(
                                      color: AppColors.accentText,
                                      fontSize: Sizes.TEXT_SIZE_14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bookmark
                  ? Positioned(
                      top: (cardHeight / 2) + 16,
                      left: width - 60,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset(ImagePath.activeBookmarksIcon2),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
