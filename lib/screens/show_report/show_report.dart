import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tohamy_task/resources/colors.dart';
import 'package:tohamy_task/resources/strings.dart';
import 'package:tohamy_task/screens/show_report/view/button_filter.dart';
import 'package:tohamy_task/screens/show_report/view/status_box.dart';
import 'package:tohamy_task/screens/show_report/view/status_title.dart';

class ShowReport extends StatelessWidget {
  const ShowReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 70),
              Text(
                AppStrings.showReport,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '12/03/2025 - 15/04/2025',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5.5),
              SizedBox(
                height: 37,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: index == 0
                            ? 0
                            : 8, // no start padding for the first item
                      ),
                      child: ButtonFilter(
                        title: 'عقود الحجاج',
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 36),
              Text(
                'طلبات التعاقد',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      StatusTitle(
                        title: 'مرفوضة',
                        color: AppColors.red,
                      ),
                      const SizedBox(height: 10),
                      StatusTitle(
                        title: 'تحت الاجراء',
                        color: AppColors.yellow,
                      ),
                      const SizedBox(height: 10),
                      StatusTitle(
                        title: 'معتمدة',
                        color: AppColors.green,
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  EasyPieChart(
                    size: 100,
                    children: [
                      PieData(value: 30, color: AppColors.red),
                      PieData(value: 50, color: AppColors.green),
                      PieData(value: 20, color: AppColors.yellow),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 17,
                        color: AppColors.lightBlack,
                      ),
                      Text(
                        'اسم المنظم',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StatusBox(
                        title: 'معتمدة',
                        color: AppColors.green,
                        textColor: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      StatusBox(
                        title: '١٠٠ حاج',
                        color: AppColors.darkGrey,
                        textColor: AppColors.lightBlack,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '١٢/٠٨/٢٠٢٥',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/calender.svg',
                        width: 17,
                        height: 17,
                      ),
                      Spacer(),
                      Text(
                        '١٢٣،٣٤٥ ريال',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/sar.svg',
                        width: 17,
                        height: 17,
                      ),
                      Spacer(),
                      Text(
                        '١٢٣٤٥٦',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/hash.svg',
                        width: 17,
                        height: 17,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    color: AppColors.darkGrey,
                    thickness: 1,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 17,
                        color: AppColors.lightBlack,
                      ),
                      Text(
                        'اسم المنظم',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StatusBox(
                        title: 'تحت الاجراء',
                        color: Color(0xffECA737),
                        textColor: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      StatusBox(
                        title: '١٠٠ حاج',
                        color: AppColors.darkGrey,
                        textColor: AppColors.lightBlack,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '١٢/٠٨/٢٠٢٥',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/calender.svg',
                        width: 17,
                        height: 17,
                      ),
                      Spacer(),
                      Text(
                        '١٢٣،٣٤٥ ريال',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/sar.svg',
                        width: 17,
                        height: 17,
                      ),
                      Spacer(),
                      Text(
                        '١٢٣٤٥٦',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/hash.svg',
                        width: 17,
                        height: 17,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    color: AppColors.darkGrey,
                    thickness: 1,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 17,
                        color: AppColors.lightBlack,
                      ),
                      Text(
                        'اسم المنظم',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StatusBox(
                        title: 'معتمدة',
                        color: AppColors.green,
                        textColor: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      StatusBox(
                        title: '١٠٠ حاج',
                        color: AppColors.darkGrey,
                        textColor: AppColors.lightBlack,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '١٢/٠٨/٢٠٢٥',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/calender.svg',
                        width: 17,
                        height: 17,
                      ),
                      Spacer(),
                      Text(
                        '١٢٣،٣٤٥ ريال',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/sar.svg',
                        width: 17,
                        height: 17,
                      ),
                      Spacer(),
                      Text(
                        '١٢٣٤٥٦',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/images/hash.svg',
                        width: 17,
                        height: 17,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    color: AppColors.darkGrey,
                    thickness: 1,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'تحميل التقرير',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/download.svg',
                        width: 25,
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
