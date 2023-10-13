import 'package:bloc_app_2/presentation/screens/general/home/home_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data_sources/remote/api_clients.dart';
import '../data_sources/remote/api_end_points_url.dart';

class PostRepo extends Apiclient {
  PostRepo();

  Future<HomeModel> getallPosts() async {
    try {
      final response = await getRequest(path: ApiEndpointsurls.posts);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        // Vx.log(responseData);

        final responseData = HomeModel.fromJson(response.data);
        return responseData;
      } else {
        HomeModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      HomeModel();
    }
    return HomeModel();
  }
}
