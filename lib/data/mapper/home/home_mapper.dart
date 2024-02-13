import 'dart:ui';

import 'package:mock_university/domain/entity/general/course_category_entity.dart';
import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/domain/entity/general/time_entity.dart';

import '../../../domain/presentation_data/home/home_data.dart';
import '../../../utils/ui/colors.dart';

class HomeMapper {
  static HomeData map() {
    List<CourseEntity> recommendedList = [];
    recommendedList.add(const CourseEntity(
      id: "0",
      name: "Core java",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/1200px-Java_programming_language_logo.svg.png",
      isSaved: false,
      totalTime: TimeEntity(hour: 1, minute: 30, second: 0),
      totalNumberOfQuestions: 30,
    ));
    recommendedList.add(const CourseEntity(
        id: "1",
        name: "AWS Certification",
        imageUrl:
            "https://play-lh.googleusercontent.com/u_f6r0YV93zRmSO4-SBUlyzpnyNAI0gNATKat6URmcPvtmuCl2P7K9kr6al2A2InHrE",
        isSaved: true,
        totalTime: TimeEntity(hour: 0, minute: 55, second: 0),
        totalNumberOfQuestions: 23));
    recommendedList.add(const CourseEntity(
        id: "1",
        name: "AWS Certification",
        imageUrl:
            "https://play-lh.googleusercontent.com/u_f6r0YV93zRmSO4-SBUlyzpnyNAI0gNATKat6URmcPvtmuCl2P7K9kr6al2A2InHrE",
        isSaved: true,
        totalTime: TimeEntity(hour: 0, minute: 55, second: 0),
        totalNumberOfQuestions: 23));

    recommendedList.add(const CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        totalNumberOfQuestions: 23));

    List<CourseCategoryEntity> categoriesList = [];

    categoriesList.add(CourseCategoryEntity(
      id: "0",
      name: "IT and Software",
      imageUrl:
          "https://icons.veryicon.com/png/o/miscellaneous/gu-bei-chen/it-4.png",
      nameColor: black,
    ));
    categoriesList.add(const CourseCategoryEntity(
      id: "1",
      name: "Health and Fitness",
      imageUrl:
          "https://static-00.iconduck.com/assets.00/orange-heart-emoji-512x460-wqjpzl3c.png",
      nameColor: Color(0xffFF7A33),
    ));

    categoriesList.add(const CourseCategoryEntity(
      id: "2",
      name: "Office Productivity",
      imageUrl:
          "https://static.vecteezy.com/system/resources/previews/012/067/745/original/eps10-green-office-or-townhall-building-icon-isolated-on-white-background-apartment-or-architecture-symbol-in-a-simple-flat-trendy-modern-style-for-your-website-design-logo-and-mobile-app-vector.jpg",
      nameColor: Color(0xff527D43),
    ));

    categoriesList.add(const CourseCategoryEntity(
      id: "3",
      name: "Finance and Accounting",
      imageUrl:
          "https://cdn-icons-png.flaticon.com/512/4541/4541461.png",
      nameColor: Color(0xff3550DC),
    ));

    List<CourseEntity> topCoursesList = [];
    topCoursesList.add(const CourseEntity(
        id: "1",
        name: "AWS Certification",
        imageUrl:
        "https://play-lh.googleusercontent.com/u_f6r0YV93zRmSO4-SBUlyzpnyNAI0gNATKat6URmcPvtmuCl2P7K9kr6al2A2InHrE",
        isSaved: true,
        totalTime: TimeEntity(hour: 0, minute: 55, second: 0),
        totalNumberOfQuestions: 23));

    topCoursesList.add(const CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        totalNumberOfQuestions: 23));

    List<CourseEntity> popularCoursesList = [];
    popularCoursesList.add(const CourseEntity(
        id: "1",
        name: "AWS Certification",
        imageUrl:
        "https://play-lh.googleusercontent.com/u_f6r0YV93zRmSO4-SBUlyzpnyNAI0gNATKat6URmcPvtmuCl2P7K9kr6al2A2InHrE",
        isSaved: true,
        totalTime: TimeEntity(hour: 0, minute: 55, second: 0),
        totalNumberOfQuestions: 23));

    popularCoursesList.add(const CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        totalNumberOfQuestions: 23));

    List<CourseEntity> inProgressCoursesList = [];
    inProgressCoursesList.add(const  CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
        totalNumberOfQuestions: 23,
        numberOfAnsweredQuestions: 10));

    inProgressCoursesList.add(const  CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
        totalNumberOfQuestions: 23,
        numberOfAnsweredQuestions: 1));

    return HomeData(
        recommendedList: recommendedList,
        topCoursesList: topCoursesList,
        popularCoursesList: popularCoursesList,
        categoriesList: categoriesList,
        inProgressCoursesList: inProgressCoursesList);
  }
}
