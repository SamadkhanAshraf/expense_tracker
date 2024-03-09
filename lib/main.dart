import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorSchema = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
var kDarkColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(199, 34, 43, 3) ,);
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
          elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorSchema,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSchema.onPrimaryContainer,
          foregroundColor: kColorSchema.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSchema.secondaryContainer, 
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSchema.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kColorSchema.secondaryContainer,
            fontSize: 16,
          )
        ),
      ),
      home: const Expenses(),
    ),
  );
}
