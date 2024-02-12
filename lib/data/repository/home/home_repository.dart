import '../../../domain/presentation_data/home/home_data.dart';
import '../../data_provider/remote/home/home_api_provider.dart';
import '../../mapper/home/home_mapper.dart';

class HomeRepository {
  HomeRepository();

  final HomeApiProvider _homeApiProvider = HomeApiProvider();

  Future<HomeData> getHome() async {
    return HomeMapper.map();
  }
}
