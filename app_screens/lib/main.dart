// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_final_fields
import 'dart:io';
import 'package:app_screens/models/settings.dart';
import 'package:app_screens/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';
import 'screens/settings_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';
import 'models/settings.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals = DUMMY_MEALS;

  void _filterMeals(Settings settings) {
    setState(() {
      _availableMeals = DUMMY_MEALS.where((meal) {
        final filterGluten = settings.isGlutenFree && meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && meal.isLactoseFree;
        final filterVegan = settings.isVegan && meal.isVegan;
        final filterVegatarian = settings.isVegetarian && meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            filterVegan &&
            !filterVegatarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos conzinhar.',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(
                fontSize: 15,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) =>
            CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(_filterMeals),
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
