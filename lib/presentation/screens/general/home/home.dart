part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(MyAssets.assetsImagesBorderGray).cornerRadius(18),
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
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () => AutoRouter.of(context)
                              .push(const HomeDetailsRoute()),
                          child: Image.asset(
                            MyAssets.assetsImagesBorderGray,
                            height: 120,
                            width: 180,
                            fit: BoxFit.cover,
                          ).cornerRadius(18),
                        ),
                        10.h.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Netflix will charge money for password"
                                .text
                                .bold
                                .size(15)
                                .maxLines(2)
                                .make(),
                            10.h.heightBox,
                            Row(
                              children: [
                                const Icon(FeatherIcons.clock),
                                20.h.widthBox,
                                "2 weeks ago".text.make()
                              ],
                            ),
                            10.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "200 views".text.make(),
                                const Icon(FeatherIcons.bookmark),
                              ],
                            ),
                          ],
                        ).expand()
                      ],
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
