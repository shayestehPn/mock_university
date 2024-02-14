import 'package:mock_university/domain/entity/general/user_entity.dart';

class UserMapper {
  static UserEntity map() {
    UserEntity user = const UserEntity(
        name: "Shayesteh Parvin nejad",
        educationLevel: "Bachelors",
        address: "Koteshwor, Kathmandu",
        mobilePhoneNumber: "+977 9840103828",
        email: "bibhushansaakha@gmail.com");

    return user;
  }
}
