import 'package:flutter/material.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({
    super.key,
    required this.title,
    required this.hintText,
    this.icon,
  });

  final String title;
  final String hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff494949),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Directionality(
            textDirection: TextDirection.rtl,
            child: DropdownButtonFormField(
              style: const TextStyle(
                fontSize: 16.5,
                color: Color(0xff494949),
                fontWeight: FontWeight.w400,
              ),
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: 'value1',
                  child: Text('عقود الحجاج'),
                ),
                DropdownMenuItem(
                  value: 'value2',
                  child: Text('عقود الخدمة'),
                ),
                DropdownMenuItem(
                  value: 'value3',
                  child: Text('طلبات التعاقد'),
                ),
                DropdownMenuItem(
                  value: 'value4',
                  child: Text('طلبات التعاقد'),
                ),
              ],
              value: null,
              icon: Icon(
                icon ?? Icons.keyboard_arrow_down_rounded,
                color: Color(0xff005C93),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFFAFAFA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Color(0xffD6D6D6),
                    width: 1,
                  ),
                ),
                hintText: hintText,
              ),
              onChanged: (value) {
                // Handle the selected value
              },
            ),
          ),
        ],
      ),
    );
  }
}
