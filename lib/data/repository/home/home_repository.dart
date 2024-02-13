import 'package:mock_university/data/mapper/home/wishes_mapper.dart';

import '../../../domain/presentation_data/home/home_data.dart';
import '../../../domain/presentation_data/home/wishes_data.dart';
import '../../data_provider/remote/home/home_api_provider.dart';
import '../../mapper/home/home_mapper.dart';

class HomeRepository {
  HomeRepository();

  final HomeApiProvider _homeApiProvider = HomeApiProvider();

  Future<HomeData> getHome() async {
    return HomeMapper.map();
  }

  Future<WishesData> getWishes() async {
    return WishesMapper.map();
  }
}
