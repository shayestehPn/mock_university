import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/domain/entity/general/time_entity.dart';

import '../../../domain/presentation_data/home/search_data.dart';

class SearchMapper {
  static SearchData map() {
    List<CourseEntity> allCoursesList = [];
    allCoursesList.add(const CourseEntity(
      id: "3",
      name: "React JS",
      imageUrl:
          "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
      isSaved: true,
      totalTime: TimeEntity(hour: 0, minute: 55, second: 54),
      totalNumberOfQuestions: 23,
    ));

    allCoursesList.add(const CourseEntity(
        id: "3",
        name: "Java Core",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 1, minute: 23, second: 0),
        totalNumberOfQuestions: 30));

    allCoursesList.add(const CourseEntity(
        id: "3",
        name: "Python",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 0, minute: 35, second: 0),
        totalNumberOfQuestions: 20));
    allCoursesList.add(const CourseEntity(
        id: "3",
        name: "C++",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 5, minute: 55, second: 0),
        totalNumberOfQuestions: 13));
    allCoursesList.add(const CourseEntity(
        id: "3",
        name: "Advanced C#",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        totalNumberOfQuestions: 2));
    allCoursesList.add(const CourseEntity(
        id: "3",
        name: "C#",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        totalNumberOfQuestions: 5));
    allCoursesList.add(const CourseEntity(
        id: "3",
        name: "React Native",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 5, minute: 55, second: 0),
        totalNumberOfQuestions: 60));

    List<String> topSearchesList = [
      "python",
      "java",
      "excel",
      "sql",
      "digital marketing",
      "react",
      "aws",
      "photoshop",
      "user interface",
      "c#"
    ];

    return SearchData(
        allCoursesList: allCoursesList, topSearchesList: topSearchesList);
  }
}
