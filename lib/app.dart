import 'package:flutter/material.dart';
import 'package:tohamy_task/resources/colors.dart';
import 'package:tohamy_task/screens/reports/reports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar', 'AE'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBg,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Shame',
            ),
        useMaterial3: true,
      ),
      home: const ReportsScreen(),
    );
  }
}
