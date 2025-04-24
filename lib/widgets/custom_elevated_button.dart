import 'package:flutter/material.dart';
import 'package:tohamy_task/resources/colors.dart';
import 'package:tohamy_task/resources/strings.dart';
import 'package:tohamy_task/screens/show_report/show_report.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the ShowReport screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShowReport(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            fixedSize: Size(
              MediaQuery.of(context).size.width,
              40,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            AppStrings.printReport,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
