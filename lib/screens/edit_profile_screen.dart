import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/widgets/custom_app_bar.dart';
import 'package:cooking_share/widgets/custom_text_form_field.dart';
import 'package:cooking_share/widgets/base_button.dart';
import 'package:cooking_share/widgets/spaces.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var hintTextStyle =
        textTheme.subtitle2.copyWith(color: AppColors.accentText);
    var textFormFieldTextStyle =
        textTheme.subtitle2.copyWith(color: AppColors.accentText);

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomAppBar(
            title: "Edit Profile",
            trailing: <Widget>[
              InkWell(
                onTap: () => AppRouter.navigator.pop(),
                child: Center(
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      'Cancel',
                      style: textTheme.bodyText2.copyWith(
                        color: AppColors.accentText,
                        fontSize: Sizes.TEXT_SIZE_20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: Sizes.MARGIN_20, vertical: Sizes.MARGIN_20),
          child: Column(
            children: <Widget>[
              CustomTextFormField(
                hasPrefixIcon: true,
                prefixIconImagePath: ImagePath.personIcon,
                textFormFieldStyle: textFormFieldTextStyle,
                hintText: "John Williams",
                prefixIconColor: AppColors.secondaryElement,
                hintTextStyle: hintTextStyle,
                borderStyle: BorderStyle.solid,
                borderWidth: Sizes.WIDTH_1,
              ),
              SpaceH20(),
              Spacer(flex: 1),
              BaseButton(
                "Update",
                buttonWidth: MediaQuery.of(context).size.width,
                onTap: () => AppRouter.navigator.pop(),
              ),
              Spacer(flex: 1),
            ],
          ),
          ),
      ),
    );
  }
}
