part of 'home_imports.dart';

class HomeViewModel {
  final Repository repository;

  HomeViewModel({required this.repository});

  final VelocityBloc<HomeModel> postbloc = VelocityBloc<HomeModel>(HomeModel());

  fetchAllposts() async {
    var postData = await repository.postRepo.getallPosts();

    if (postData.status == 1) {
      postbloc.onUpdateData(postData);
    }
  }
}
