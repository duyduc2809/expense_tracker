import 'package:expenses_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kClolorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kClolorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kClolorScheme.onPrimaryContainer,
        foregroundColor: kClolorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kClolorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kClolorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kClolorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
    ),
    home: const Expenses(),
  ));
}
