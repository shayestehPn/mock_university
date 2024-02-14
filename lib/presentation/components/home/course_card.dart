import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/presentation/components/general/custom_cached_network_image.dart';
import 'package:mock_university/presentation/components/general/images/svg_image.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/extensions/time_entity_formatting.dart';
import 'package:mock_university/utils/ui/colors.dart';

class CourseCard extends StatelessWidget {
  const CourseCard(
      {super.key, required this.courseEntity, required this.saveOnCLick});

  final CourseEntity courseEntity;
  final Function() saveOnCLick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.w,
      height: 171.h,
      margin: EdgeInsets.only(right: 17.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: const Color(0xffFFFFFF)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 115.h,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14)),
                color: white),
            child: CustomCachedNetworkImage(
              imageUrl: courseEntity.imageUrl,
              height: 80.r,
              width: 80.r,
            ),
          ),
          GestureDetector(
            onTap: () {
              saveOnCLick();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(14.w, 7.w, 14.w, 0),
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(courseEntity.name,
                          style: context.appTextTheme.titleSmall),
                      Text(courseEntity.totalTime.getTimeText(),
                          style: context.appTextTheme.titleSmall?.copyWith(
                              color: const Color(0xff000000).withOpacity(0.3),
                              fontSize: 10.sp))
                    ],
                  ),
                  courseEntity.isSaved
                      ? SvgImage.savedBlackIcon
                      : SvgImage.unsavedBlackIcon
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
