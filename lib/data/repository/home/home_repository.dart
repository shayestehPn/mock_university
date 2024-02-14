import 'package:mock_university/data/mapper/home/search_mapper.dart';
import 'package:mock_university/data/mapper/home/wishes_mapper.dart';
import 'package:mock_university/domain/entity/general/user_entity.dart';
import 'package:mock_university/domain/presentation_data/home/search_data.dart';

import '../../../domain/presentation_data/home/home_data.dart';
import '../../../domain/presentation_data/home/wishes_data.dart';
import '../../data_provider/remote/home/home_api_provider.dart';
import '../../mapper/home/home_mapper.dart';
import '../../mapper/general/user_mapper.dart';

class HomeRepository {
  HomeRepository();

  final HomeApiProvider _homeApiProvider = HomeApiProvider();

  Future<HomeData> getHome() async {
    return HomeMapper.map();
  }

  Future<WishesData> getWishes() async {
    return WishesMapper.map();
  }

  Future<UserEntity> getAccountData() async {
    return UserMapper.map();
  }

  Future<SearchData> getAllCoursesList() async {
    return SearchMapper.map();
  }
}
