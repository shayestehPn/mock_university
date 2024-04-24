import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/account/select_language_row.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';
import '../general/app_sized_box.dart';

class SelectLanguageCard extends StatelessWidget {
  const SelectLanguageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25.w,23.h,25.w,23.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
          color: white,
          border: Border.all(
            color: const Color(0xff009944).withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language",
              style: context.appTextTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const HeightSizedBox(height: 24),
          SelectLanguageRow(locale: const Locale('en')),
          SelectLanguageRow(locale: const Locale('fa')),
          SelectLanguageRow(locale: const Locale('ar')),
        ],
      ),
    );
  }
}
