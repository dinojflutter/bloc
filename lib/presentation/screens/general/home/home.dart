part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = HomeViewModel(repository: context.read<Repository>());
    homeViewModel.fetchAllposts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: BlocBuilder<VelocityBloc<HomeModel>, VelocityState<HomeModel>>(
            bloc: homeViewModel.postbloc,
            builder: (context, state) {
              if (state is VelocityInitialState) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else if (state is VelocityUpdateState) {
                return SingleChildScrollView(
                  child: Column(children: [
                    Image.asset(MyAssets.assetsImagesBorderGray)
                        .cornerRadius(18),
                    15.h.heightBox,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Latest posts"),
                        Text("See All"),
                      ],
                    ),
                    15.h.heightBox,
                    ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20,
                            ),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.data.allPosts!.length,
                        itemBuilder: (context, index) {
                          var latestposts = state.data.allPosts![index];
                          var imagepath = latestposts.featuredimage
                              .toString()
                              .prepend("https://techblog.codersangam.com/")
                              .replaceAll("public", "storage");
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () => AutoRouter.of(context).push(
                                  HomeDetailsRoute(post: latestposts),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: imagepath,
                                  height: 120,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ).cornerRadius(18),
                              ),
                              10.h.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  latestposts.title
                                      .toString()
                                      .text
                                      .bold
                                      .size(14)
                                      .maxLines(3)
                                      .make(),
                                  10.h.heightBox,
                                  Row(
                                    children: [
                                      const Icon(
                                        FeatherIcons.clock,
                                        size: 18,
                                      ),
                                      10.h.widthBox,
                                      latestposts.createdAt!
                                          .timeAgo()
                                          .text
                                          .size(14)
                                          .make()
                                    ],
                                  ),
                                  10.h.heightBox,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      " ${latestposts.views} views".text.make(),
                                      const Icon(FeatherIcons.bookmark),
                                    ],
                                  ),
                                ],
                              ).expand()
                            ],
                          );
                        })
                  ]),
                );
              }
              return SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
