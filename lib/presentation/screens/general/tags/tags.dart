part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchalltags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.plus),
            color: Colors.white,
          )
        ],
        backgroundColor: MyColors.appbackground,
        title: "Tags".text.color(Colors.white).make().centered(),
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 14,
                    ),
                itemCount: state.data.tags!.length,
                itemBuilder: (context, index) {
                  var tagsData = state.data.tags![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: "${index + 1}".text.make(),
                        title: tagsData.title!.text.make(),
                        trailing: const SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                FeatherIcons.edit2,
                                color: Colors.green,
                              ),
                              Icon(
                                FeatherIcons.trash,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
          }
          return const SizedBox();
        },
      ),
    );
  }
}
