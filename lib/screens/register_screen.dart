import 'package:flutter/material.dart';
import 'package:cooking_share/routes/router.gr.dart';
import 'package:cooking_share/values/values.dart';
import 'package:cooking_share/widgets/custom_text_form_field.dart';
import 'package:cooking_share/widgets/dark_overlay.dart';
import 'package:cooking_share/widgets/base_button.dart';
import 'package:cooking_share/widgets/spaces.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: Decorations.regularDecoration,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: Image.asset(
                  ImagePath.chocolateGoodies,
                  height: heightOfScreen,
                  width: widthOfScreen,
                  fit: BoxFit.cover,
                ),
              ),
              DarkOverLay(),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 40,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_40),
                  child: ListView(
                    children: [
                      SpaceH96(),
                      _buildForm(),
                      SpaceH40(),
                      BaseButton(
                        StringConst.REGISTER,
                        onTap: () => {},
                      ),
                      SpaceH40(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringConst.HAVE_AN_ACCOUNT_QUESTION,
                            textAlign: TextAlign.right,
                            style: Styles.customNormalTextStyle(),
                          ),
                          SpaceW16(),
                          InkWell(
                            onTap: () => AppRouter.navigator
                                .pushReplacementNamed(AppRouter.loginScreen),
                            child: Text(
                              StringConst.LOGIN,
                              textAlign: TextAlign.left,
                              style: Styles.customNormalTextStyle(
                                color: AppColors.secondaryElement,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: <Widget>[
        CustomTextFormField(
          hasPrefixIcon: true,
          prefixIconImagePath: ImagePath.personIcon,
          hintText: StringConst.HINT_TEXT_NAME,
        ),
        SpaceH16(),
        CustomTextFormField(
          hasPrefixIcon: true,
          prefixIconImagePath: ImagePath.emailIcon,
          hintText: StringConst.HINT_TEXT_EMAIL,
        ),
        SpaceH16(),
        CustomTextFormField(
          hasPrefixIcon: true,
          prefixIconImagePath: ImagePath.passwordIcon,
          hintText: StringConst.HINT_TEXT_PASSWORD,
          obscured: true,
        ),
        SpaceH16(),
        CustomTextFormField(
          hasPrefixIcon: true,
          prefixIconImagePath: ImagePath.passwordIcon,
          hintText: StringConst.HINT_TEXT_CONFIRM_PASSWORD,
          obscured: true,
        ),
      ],
    );
  }
}
