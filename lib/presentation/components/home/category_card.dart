import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/domain/entity/general/course_category_entity.dart';
import 'package:mock_university/presentation/components/general/custom_cached_network_image.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryEntity});

  final CourseCategoryEntity categoryEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 64.r,
            width: 64.r,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white
            ),
            child: CustomCachedNetworkImage(
              imageUrl: categoryEntity.imageUrl,
              height: 32.r,
              width: 32.r,
            ),
          ),
          Container(
            width: 64.r,
            margin: EdgeInsets.only(top: 7.h),
            child: Text(categoryEntity.name,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: context.appTextTheme.labelSmall?.copyWith(color: categoryEntity.nameColor),),
          )
        ],
      ),
    );
  }
}
