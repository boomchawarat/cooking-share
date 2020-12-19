import 'package:flutter/material.dart';
import 'package:cooking_share/routes/router.dart';
import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/values/data.dart';
import 'package:cooking_share/widgets/category_card.dart';
import 'package:cooking_share/widgets/food_card.dart';
import 'package:cooking_share/widgets/heading_row.dart';
import 'package:cooking_share/widgets/search_input_field.dart';

class MainScreen extends StatelessWidget {
  static const int TAB_NO = 0;

  MainScreen({Key key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: Sizes.MARGIN_16,
            vertical: Sizes.MARGIN_8,
          ),
          child: ListView(
            children: <Widget>[
              SearchInputField(
                ImagePath.searchIcon,
                controller: controller,
                textFormFieldStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                hintText: StringConst.HINT_TEXT_HOME_SEARCH_BAR,
                hintTextStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                borderWidth: 0.0,
                onTapOfLeadingIcon: () => AppRouter.navigator.pushNamed(
                  AppRouter.searchResultsScreen,
                  arguments: SearchValue(
                    controller.text,
                  ),
                ),
                borderStyle: BorderStyle.solid,
              ),
              SizedBox(height: 16.0),
              HeadingRow(
                title: StringConst.CATEGORY,
                number: StringConst.SEE_ALL_9,
                onTapOfNumber: () =>
                    AppRouter.navigator.pushNamed(AppRouter.categoriesScreen),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryImagePaths.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8.0),
                      child: FoodCategoryCard(
                        imagePath: categoryImagePaths[index],
                        gradient: gradients[index],
                        category: category[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.0),
              HeadingRow(
                title: StringConst.TRENDING,
                number: StringConst.SEE_ALL_45,
                onTapOfNumber: () => AppRouter.navigator
                    .pushNamed(AppRouter.trendingFoodsScreen),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 4.0),
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
                          category: category[index],
                          description: details[index],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
