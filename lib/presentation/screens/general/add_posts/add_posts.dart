part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.appbackground,
          title: "Add Posts".text.color(Colors.white).make().centered(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FeatherIcons.check,
                  color: Colors.white,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              15.h.heightBox,
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.network(
                          "https://www.ivins.com/wp-content/uploads/2020/09/placeholder-1.png")
                      .cornerRadius(20),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.camera,
                      color: MyColors.appbackground,
                    ),
                  ),
                ],
              ),
              15.h.heightBox,
              const VxTextField(
                fillColor: Colors.transparent,
                borderColor: MyColors.appbackground,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10,
                hint: "Title",
              ),
              15.h.heightBox,
              const VxTextField(
                fillColor: Colors.transparent,
                borderColor: MyColors.appbackground,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10,
                hint: "Slug",
              ),
              15.h.heightBox,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Tags".text.make(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FeatherIcons.chevronRight))
                  ],
                ),
              ),
              15.h.heightBox,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Categories".text.make(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FeatherIcons.chevronRight))
                  ],
                ),
              ),
              QuillToolbar.basic(controller: _controller),
              SizedBox(
                height: 500,
                child: QuillEditor.basic(
                  controller: _controller,
                  readOnly: false,
                ),
              ),
            ],
          ),
        ));
  }
}
