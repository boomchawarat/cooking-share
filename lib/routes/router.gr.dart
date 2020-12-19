// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cooking_share/screens/login_screen.dart';
import 'package:cooking_share/screens/splash_screen.dart';
import 'package:cooking_share/screens/forgot_password_screen.dart';
import 'package:cooking_share/screens/register_screen.dart';
import 'package:cooking_share/screens/main_screen.dart';
import 'package:cooking_share/screens/root_screen.dart';
import 'package:cooking_share/routes/router.dart';
import 'package:cooking_share/screens/profile_screen.dart';
import 'package:cooking_share/screens/trending_food_screen.dart';
import 'package:cooking_share/screens/food_details_screen.dart';
import 'package:cooking_share/screens/bookmarks_screen.dart';
import 'package:cooking_share/screens/search_results.dart';
import 'package:cooking_share/screens/menu_photos_screen.dart';
import 'package:cooking_share/screens/preview_menu_photos.dart';
import 'package:cooking_share/screens/categories_screen.dart';
import 'package:cooking_share/screens/category_detail_screen.dart';
import 'package:cooking_share/screens/settings_screen.dart';
import 'package:cooking_share/screens/change_password_screen.dart';
import 'package:cooking_share/screens/edit_profile_screen.dart';

class AppRouter {
  static const loginScreen = '/';
  static const splashScreen = '/splash-screen';
  static const forgotPasswordScreen = '/forgot-password-screen';
  static const registerScreen = '/register-screen';
  static const setLocationScreen = '/set-location-screen';
  static const homeScreen = '/home-screen';
  static const rootScreen = '/root-screen';
  static const profileScreen = '/profile-screen';
  static const notificationsScreen = '/notifications-screen';
  static const trendingFoodsScreen = '/trending-foods-screen';
  static const foodDetailsScreen = '/food-details-screen';
  static const bookmarksScreen = '/bookmarks-screen';
  static const filterScreen = '/filter-screen';
  static const searchResultsScreen = '/search-results-screen';
  static const reviewRatingScreen = '/review-rating-screen';
  static const addRatingsScreen = '/add-ratings-screen';
  static const menuPhotosScreen = '/menu-photos-screen';
  static const previewMenuPhotosScreen = '/preview-menu-photos-screen';
  static const categoriesScreen = '/categories-screen';
  static const categoryDetailScreen = '/category-detail-screen';
  static const findFriendsScreen = '/find-friends-screen';
  static const settingsScreen = '/settings-screen';
  static const changePasswordScreen = '/change-password-screen';
  static const changeLanguageScreen = '/change-language-screen';
  static const editProfileScreen = '/edit-profile-screen';
  static const newReviewScreen = '/new-review-screen';
  static final navigator = ExtendedNavigator();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRouter.loginScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      case AppRouter.splashScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SplashScreen(),
          settings: settings,
        );
      case AppRouter.forgotPasswordScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => ForgotPasswordScreen(),
          settings: settings,
        );
      case AppRouter.registerScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => RegisterScreen(),
          settings: settings,
        );
      case AppRouter.homeScreen:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => MainScreen(key: typedArgs),
          settings: settings,
        );
      case AppRouter.rootScreen:
        if (hasInvalidArgs<CurrentScreen>(args)) {
          return misTypedArgsRoute<CurrentScreen>(args);
        }
        final typedArgs = args as CurrentScreen;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => RootScreen(currentScreen: typedArgs),
          settings: settings,
        );
      case AppRouter.profileScreen:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => ProfileScreen(key: typedArgs),
          settings: settings,
        );
      case AppRouter.trendingFoodsScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => TrendingFoodsScreen(),
          settings: settings,
        );
      case AppRouter.foodDetailsScreen:
        if (hasInvalidArgs<FoodDetails>(args, isRequired: true)) {
          return misTypedArgsRoute<FoodDetails>(args);
        }
        final typedArgs = args as FoodDetails;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => FoodDetailsScreen(foodDetails: typedArgs),
          settings: settings,
        );
      case AppRouter.bookmarksScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => BookmarksScreen(),
          settings: settings,
        );
      case AppRouter.searchResultsScreen:
        if (hasInvalidArgs<SearchValue>(args)) {
          return misTypedArgsRoute<SearchValue>(args);
        }
        final typedArgs = args as SearchValue;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SearchResultsScreen(typedArgs),
          settings: settings,
        );
      case AppRouter.menuPhotosScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => MenuPhotosScreen(),
          settings: settings,
        );
      case AppRouter.previewMenuPhotosScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => PreviewMenuPhotosScreen(),
          settings: settings,
        );
      case AppRouter.categoriesScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => CategoriesScreen(),
          settings: settings,
        );
      case AppRouter.categoryDetailScreen:
        if (hasInvalidArgs<CategoryDetailScreenArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<CategoryDetailScreenArguments>(args);
        }
        final typedArgs = args as CategoryDetailScreenArguments;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => CategoryDetailScreen(
              categoryName: typedArgs.categoryName,
              imagePath: typedArgs.imagePath,
              numberOfCategories: typedArgs.numberOfCategories,
              selectedCategory: typedArgs.selectedCategory,
              gradient: typedArgs.gradient),
          settings: settings,
        );
      case AppRouter.settingsScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SettingsScreen(),
          settings: settings,
        );
      case AppRouter.changePasswordScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => ChangePasswordScreen(),
          settings: settings,
        );
      case AppRouter.editProfileScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => EditProfileScreen(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//CategoryDetailScreen arguments holder class
class CategoryDetailScreenArguments {
  final String categoryName;
  final String imagePath;
  final int numberOfCategories;
  final int selectedCategory;
  final Gradient gradient;

  CategoryDetailScreenArguments(
      {@required this.categoryName,
      @required this.imagePath,
      @required this.numberOfCategories,
      @required this.selectedCategory,
      @required this.gradient});
}
