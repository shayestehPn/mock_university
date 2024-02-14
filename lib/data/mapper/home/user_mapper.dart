import 'package:mock_university/domain/entity/general/user_entity.dart';

class UserMapper {
  static UserEntity map() {
    UserEntity user = const UserEntity(
        name: "Shayesteh Parvin nejad",
        educationLevel: "Bachelors",
        address: "Koteshwor, Kathmandu",
        mobilePhoneNumber: "+977 9840103828",
        email: "bibhushansaakha@gmail.com",
        imageUrl:"https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"
    );

    return user;
  }
}
