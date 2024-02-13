import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/domain/entity/general/time_entity.dart';
import 'package:mock_university/domain/presentation_data/home/wishes_data.dart';

class WishesMapper {
  static WishesData map() {
    List<CourseEntity> wishesList = [];
    wishesList.add(const CourseEntity(
      id: "3",
      name: "React JS",
      imageUrl:
          "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
      isSaved: true,
      totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
      remainingTime: TimeEntity(hour: 2, minute: 55, second: 0),
      totalNumberOfQuestions: 23,
    ));

    wishesList.add(const CourseEntity(
        id: "3",
        name: "React JS",
        imageUrl:
            "https://miro.medium.com/v2/resize:fit:1200/1*WA_9JsyqFkge2HwYKcdJQw.png",
        isSaved: true,
        totalTime: TimeEntity(hour: 2, minute: 55, second: 0),
        remainingTime: TimeEntity(hour: 2, minute: 55, second: 0),
        totalNumberOfQuestions: 23,
        numberOfAnsweredQuestions: 1));

    return WishesData(wishesList: wishesList);
  }
}
