import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/domain/entity/general/time_entity.dart';
import 'package:mock_university/presentation/components/general/custom_cached_network_image.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/ui/colors.dart';

class CourseCard  extends StatelessWidget {
  const CourseCard ({super.key, required this.courseEntity});

  final CourseEntity courseEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.w,
      height: 171.h,
      margin: EdgeInsets.only(right: 17.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: backGroundColor
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 115.h,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14)
              ),
              color: white
            ),
            child: CustomCachedNetworkImage(
              imageUrl: courseEntity.imageUrl,
              height: 80.h,
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(courseEntity.name,
                  style: context.appTextTheme.titleSmall),
                  Text(getTimeText(courseEntity.totalTime),
                      style: context.appTextTheme.titleSmall?.copyWith(
                          color: const Color(0xff000000).withOpacity(0.3),
                        fontSize: 10.sp
                      ))
                ],
              )
            ],
          )

        ],
      ),
    );
  }
  
  String getTimeText(TimeEntity time){
    String result="";
    time.hour!=0?result+= "${time.hour}h":null;
    time.hour!=0 && time.minute!=0?result+= ".":null;
    time.minute!=0?result+= "${time.minute}min":null;
    return result;
  }
}