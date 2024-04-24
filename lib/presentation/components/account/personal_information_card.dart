import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/domain/entity/general/user_entity.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/ui/colors.dart';

class PersonalInformationCard extends StatelessWidget {
  const PersonalInformationCard({super.key, required this.userEntity});

  final UserEntity userEntity;

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
          Text(context.localizationCubit.getTranslatedValue("personalInfo"),
              style: context.appTextTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const HeightSizedBox(height: 24),
          dataRow("yourName",userEntity.name,context),
          dataRow("educationLevel",userEntity.educationLevel,context),
          dataRow("address",userEntity.address,context),
        ],
      ),
    );
  }

  Padding dataRow(String firstValue, String secondValue, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.localizationCubit.getTranslatedValue(firstValue),
              style: context.appTextTheme.titleSmall
                  ?.copyWith(color: const Color(0xff3B3B3B))),
          Text(secondValue, style: context.appTextTheme.titleSmall),
        ],
      ),
    );
  }
}
