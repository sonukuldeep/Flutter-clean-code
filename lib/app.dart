import 'package:clean_code/app_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MainApp extends StatelessWidget {
  final UserRepositiory userRepository;
  const MainApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<AuthenticationBloc>(
        create: (context) =>
            AuthenticationBloc(myUserRepository: userRepository),
      ),
    ], child: const AppView());
  }
}
