import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pelix/application/downloads/downloads_bloc.dart';
import 'package:pelix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:pelix/application/home/home_bloc.dart';
import 'package:pelix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:pelix/application/search/search_bloc.dart';
import 'package:pelix/core/colors.dart';
import 'package:pelix/domain/core/di/injectable.dart';
import 'package:pelix/presentation/downloads/screen_downloads.dart';

import 'package:pelix/presentation/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<DownloadsBloc>(),
          child: ScreenDownloads(),
        ),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
        BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
          title: 'Pelix',
          theme: ThemeData(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: backgroundColor,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
            ),
            useMaterial3: true,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(surface: backgroundColor),
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen()),
    );
  }
}

// created onlytoprated movie service  rest crate for your wish and work on
