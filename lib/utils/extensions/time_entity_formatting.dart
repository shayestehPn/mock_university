import 'package:mock_university/domain/entity/general/time_entity.dart';

extension TimeEntityFormatting on TimeEntity {
  String getTimeText() {
    String result = "";
    hour != 0 ? result += "${hour}h" : null;
    hour != 0 && minute != 0 ? result += "." : null;
    minute != 0 ? result += "${minute}min" : null;
    return result;
  }
}
