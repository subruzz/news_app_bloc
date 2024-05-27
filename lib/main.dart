import 'package:flutter/material.dart';
import 'package:news_app/applications/category_bloc/category_bloc.dart';
import 'package:news_app/applications/home_bloc/home_bloc.dart';
import 'package:news_app/applications/search_bloc/search_bloc.dart';
import 'package:news_app/applications/trending_bloc/trending_bloc.dart';
import 'package:news_app/core/injectable.dart';
import 'package:news_app/presentation/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/search/search_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
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
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TrendingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryBloc>(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen()),
    );
  }
}
