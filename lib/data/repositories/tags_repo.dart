import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/tags/tags_model.dart';
import '../data_sources/remote/api_clients.dart';
import '../data_sources/remote/api_end_points_url.dart';

class TagRepo extends Apiclient {
  TagRepo();

  Future<TagsModel> getallTags() async {
    try {
      final response = await getRequest(path: ApiEndpointsurls.tags);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        // Vx.log(responseData);

        final responseData = TagsModel.fromJson(response.data);
        return responseData;
      } else {
        TagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }
}
