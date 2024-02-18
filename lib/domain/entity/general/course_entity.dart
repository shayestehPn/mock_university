import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mock_university/domain/entity/general/time_entity.dart';

part 'course_entity.freezed.dart';

@freezed
class CourseEntity with _$CourseEntity {
  const factory CourseEntity({
    required String id,
    required String name,
    required String imageUrl,
    required bool isSaved,
    required TimeEntity totalTime,
    TimeEntity? remainingTime,
    required int totalNumberOfQuestions,
    int? numberOfAnsweredQuestions,
    int? score,
    String? completingDate
  }) = _CourseEntity;
}
