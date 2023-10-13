part of 'tags_imports.dart';

class TagsViewModel {
  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc =
      VelocityBloc<TagsModel>(TagsModel());

  fetchalltags() async {
    var tagsData = await repository.tagRepo.getallTags();

    if (tagsData.status == 1) {
      tagsModelBloc.onUpdateData(tagsData);
    }
  }
}
