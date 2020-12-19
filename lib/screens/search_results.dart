import 'package:flutter/material.dart';
import 'package:cooking_share/routes/router.dart';
import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/data.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/widgets/food_card.dart';
import 'package:cooking_share/widgets/search_input_field.dart';
import 'package:cooking_share/widgets/spaces.dart';

class SearchResultsScreen extends StatelessWidget {
  final SearchValue searchValue;

  SearchResultsScreen(this.searchValue);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(text: searchValue.value);

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: Sizes.MARGIN_16,
            right: Sizes.MARGIN_16,
            top: Sizes.MARGIN_16,
          ),
          child: Column(
            children: <Widget>[
              SearchInputField(
                ImagePath.searchIcon,
                controller: controller,
                textFormFieldStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                hintText: StringConst.HINT_TEXT_TRENDING_SEARCH_BAR,
                hintTextStyle:
                    Styles.customNormalTextStyle(color: AppColors.accentText),
                borderWidth: 0.0,
                borderStyle: BorderStyle.solid,
              ),
              SizedBox(height: Sizes.WIDTH_16),
              Expanded(
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
                        category: category[index],
                        description: details[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
