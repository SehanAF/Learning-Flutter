// ignore_for_file: non_constant_identifier_names

/*
  Spotify Roadmap

  1. Project Struktur. ☑
  2. Theme of Application. ☑
  3. Asset & Fonts Folder / Defining in Pubspec. ☑
  4. Splash Page. ☑
  5. Get Started Page. ☑
  6. Choose Mode Page. ☑
  7. Choose Mode Logic. ☑
  8. Login Or Signup Page. ☑
  9. Login Page
  10. Signup Page
  11. Firebase Setup
*/


// ignore_for_file: prefer_const_constructors

import 'package:myapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myapp/core/configs/theme/app_theme.dart';
import 'package:myapp/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:myapp/presentation/splash/pages/splash.dart';
import 'package:myapp/service_locator.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context,mode) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: mode,
          home: const SplashPage(),
          routes: {
            
          },
        )
      ),
    );
  }
}




















