import 'package:cooking_share/repositories/user_repository.dart';
import 'package:cooking_share/screens/home/home_page.dart';
import 'package:cooking_share/screens/login/login_screen.dart';
import 'package:cooking_share/screens/order/orders_page.dart';
import 'package:cooking_share/theme/app_theme.dart';
import 'package:cooking_share/widgets/loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/authentication_bloc/authentication_bloc.dart';
import 'blocs/authentication_bloc/authentication_event.dart';
import 'blocs/authentication_bloc/authentication_state.dart';
import 'blocs/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Bloc.observer = SimpleBlocObserver();
    final UserRepository userRepository = UserRepository();

    return BlocProvider(
      create: (context) => AuthenticationBloc(userRepository: userRepository)
        ..add(AuthenticationStarted()),
      child: MyApp(userRepository: userRepository),
    );
  }
}

class MyApp extends StatelessWidget {
  final UserRepository _userRepository;

  MyApp({UserRepository userRepository}) : _userRepository = userRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appThemeData,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationFailure) {
            return OrdersPage();
          }

          if (state is AuthenticationSuccess) {
            return OrdersPage();
          }

          return Scaffold(
            appBar: AppBar(),
            body: Container(
              child: LoadingWidget(),
            ),
          );
        },
      ),
    );
  }
}
