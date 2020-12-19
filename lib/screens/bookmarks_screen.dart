import 'package:cooking_share/routes/router.dart';
import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/data.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/widgets/food_card.dart';
import 'package:cooking_share/widgets/spaces.dart';
import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  static const int TAB_NO = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'My Favourite',
          style: Styles.customTitleTextStyle(
            color: AppColors.headingText,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_22,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: Sizes.MARGIN_16),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                ImagePath.searchIconBlue,
                color: AppColors.headingText,
              ),
            ),
          ),
        ],
      ),
      body: Container(
          margin: const EdgeInsets.only(
            left: Sizes.MARGIN_16,
            right: Sizes.MARGIN_16,
            top: Sizes.MARGIN_16,
          ),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            separatorBuilder: (context, index) {
              return SpaceH8();
            },
            itemBuilder: (context, index) {
              return Container(
                child: FoodCard(
                  onTap: () => AppRouter.navigator.pushNamed(
                    AppRouter.foodDetailsScreen,
                    arguments: FoodDetails(
                      imagePath: imagePaths[index],
                      foodName: foodName[index],
                      detail: details[index],
                      category: category[index],
                    ),
                  ),
                  imagePath: imagePaths[index],
                  cardTitle: foodName[index],
                  bookmark: true,
                  category: category[index],
                  description: details[index],
                ),
              );
            },
          )),
    );
  }
}
