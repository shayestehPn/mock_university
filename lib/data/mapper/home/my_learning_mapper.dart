import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/domain/entity/general/time_entity.dart';

import '../../../domain/presentation_data/home/my_learning_data.dart';

class MyLearningMapper {
  static MyLearningData map() {
    List<CourseEntity> allCoursesList = [];
    allCoursesList.add(const  CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
        totalNumberOfQuestions: 16,
        numberOfAnsweredQuestions: 16,
      completingDate: "2023-10-03",
      score: 6
    ));

    allCoursesList.add(const  CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
        totalNumberOfQuestions: 23,
        numberOfAnsweredQuestions: 23,
        completingDate: "2024-01-03",
        score: 10
    ));

    allCoursesList.add(const  CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
        "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
        totalNumberOfQuestions: 23,
        numberOfAnsweredQuestions: 1,
    ));
    allCoursesList.add(const  CourseEntity(
      id: "3",
      name: "React JS",
      imageUrl:
      "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
      isSaved: true,
      totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
      remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
      totalNumberOfQuestions: 23,
      numberOfAnsweredQuestions: 1,
    ));
    allCoursesList.add(const  CourseEntity(
      id: "3",
      name: "React JS",
      imageUrl:
      "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
      isSaved: true,
      totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
      remainingTime: TimeEntity(hour: 0, minute: 30, second: 0),
      totalNumberOfQuestions: 23,
      numberOfAnsweredQuestions: 1,
    ));

    return MyLearningData(allCoursesList: allCoursesList);
  }
}
