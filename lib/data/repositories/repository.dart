import 'auth_repo.dart';
import 'post_repo.dart';
import 'tags_repo.dart';

class Repository {
  Repository(
      {required this.postRepo, required this.tagRepo, required this.authRepo});

  final TagRepo tagRepo;
  final AuthRepo authRepo;
  final PostRepo postRepo;
}
