part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbackground,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.logOut,
              color: Colors.white,
            ).pOnly(right: 10),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 2,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: MyColors.appbackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(MyAssets.assetsImagesBorderGray),
                ),
                10.h.heightBox,
                "Hello Dinoj ".text.bold.xl2.color(Colors.white).make(),
                10.h.heightBox,
                "Sangam Singh AKA (Ronnie) is a software engineer who is more passionate about technology. His ambition towards technology is huge."
                    .text
                    .center
                    .color(Colors.white)
                    .make()
                    .pSymmetric(h: 20),
                20.h.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.size(20).color(Colors.white).bold.make(),
                          "Posts".text.size(15).color(Colors.white).bold.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.size(20).color(Colors.white).bold.make(),
                          "Following"
                              .text
                              .size(15)
                              .color(Colors.white)
                              .bold
                              .make(),
                        ],
                      ),
                      Column(
                        children: [
                          "10".text.size(20).color(Colors.white).bold.make(),
                          "Followers"
                              .text
                              .size(15)
                              .color(Colors.white)
                              .bold
                              .make(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          15.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My Posts".text.size(18).bold.make(),
                5.h.heightBox,
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 9, crossAxisCount: 2),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Image.asset(MyAssets.assetsImagesBorderGray)
                          .cornerRadius(18),
                      Row(
                        children: [
                          "Netflix Will Charge Money for Password Sharing"
                              .text
                              .medium
                              .maxLines(2)
                              .make()
                              .expand(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FeatherIcons.moreVertical))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
