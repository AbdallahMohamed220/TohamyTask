import 'package:flutter/material.dart';
import 'package:tohamy_task/resources/colors.dart';
import 'package:tohamy_task/resources/images.dart';
import 'package:tohamy_task/resources/strings.dart';
import 'package:tohamy_task/screens/reports/views/drop_down_item.dart';

import '../../widgets/custom_elevated_button.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Stack(
                  children: [
                    Image.asset(
                      AppImages.topBg,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          AppStrings.reports,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              DropDownItem(
                title: 'الخدمة',
                hintText: 'عقود الحجاج',
              ),
              const SizedBox(height: 24),
              DropDownItem(
                title: 'نوع العقد',
                hintText: 'عقود الخدمة',
              ),
              const SizedBox(height: 24),
              DropDownItem(
                title: 'عقود الخدمة',
                hintText: 'طلبات التعاقد',
              ),
              const SizedBox(height: 24),
              DropDownItem(
                title: 'التاريخ',
                hintText: '12/03/2025 - 15/04/2025',
                icon: Icons.calendar_today_rounded,
              ),
              const SizedBox(height: 24),
              DropDownItem(
                title: 'الموظف المكلف بالمهمة',
                hintText: 'جميع الموظفين',
              ),
              const SizedBox(height: 24),
              CustomElevatedButton(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
