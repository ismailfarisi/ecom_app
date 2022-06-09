import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/router.dart';
import 'package:e_store_coorgle/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>().goRouter();
    return BlocProvider(
      create: (context) => getIt<UserBloc>(),
      child: MaterialApp.router(
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        theme: theme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
