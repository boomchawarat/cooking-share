import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:cooking_share/screens/forgot_password_screen.dart';
import 'package:cooking_share/screens/main_screen.dart';
import 'package:cooking_share/screens/login_screen.dart';
import 'package:cooking_share/screens/profile_screen.dart';
import 'package:cooking_share/screens/register_screen.dart';
import 'package:cooking_share/screens/root_screen.dart';
import 'package:cooking_share/screens/splash_screen.dart';
import 'package:cooking_share/screens/trending_food_screen.dart';
import 'package:flutter/material.dart';
import 'package:cooking_share/screens/bookmarks_screen.dart';
import 'package:cooking_share/screens/categories_screen.dart';
import 'package:cooking_share/screens/category_detail_screen.dart';
import 'package:cooking_share/screens/change_password_screen.dart';
import 'package:cooking_share/screens/edit_profile_screen.dart';
import 'package:cooking_share/screens/menu_photos_screen.dart';
import 'package:cooking_share/screens/preview_menu_photos.dart';
import 'package:cooking_share/screens/food_details_screen.dart';
import 'package:cooking_share/screens/search_results.dart';
import 'package:cooking_share/screens/settings_screen.dart';
import 'package:meta/meta.dart';

@CupertinoAutoRouter()
class $Router {
  @initial
  @CustomAutoRouter(
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 2000)
  LoginScreen loginScreen;

  @CustomAutoRouter(
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 2000)
  SplashScreen splashScreen;

  ForgotPasswordScreen forgotPasswordScreen;

  @MaterialRoute()
  RegisterScreen registerScreen;

  MainScreen homeScreen;

  RootScreen rootScreen;

  ProfileScreen profileScreen;

  TrendingFoodsScreen trendingFoodsScreen;
  FoodDetailsScreen foodDetailsScreen;
  BookmarksScreen bookmarksScreen;

  SearchResultsScreen searchResultsScreen;

  MenuPhotosScreen menuPhotosScreen;
  PreviewMenuPhotosScreen previewMenuPhotosScreen;
  CategoriesScreen categoriesScreen;

  CategoryDetailScreen categoryDetailScreen;
  SettingsScreen settingsScreen;
  ChangePasswordScreen changePasswordScreen;

  EditProfileScreen editProfileScreen;
}

class SearchValue {
  final String value;

  SearchValue(this.value);
}

class FoodDetails {
  final String imagePath;
  final String foodName;
  final String detail;
  final String category;

  FoodDetails({
    @required this.imagePath,
    @required this.foodName,
    @required this.detail,
    @required this.category,
  });
}

class CurrentScreen {
  final Widget currentScreen;
  final int tabNo;

  CurrentScreen({
    @required this.tabNo,
    @required this.currentScreen,
  });
}
