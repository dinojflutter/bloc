part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
        title: "Categories".text.color(Colors.white).make().centered(),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 14,
        ),
        itemCount: 5,
        itemBuilder: (context, index) => Material(
          elevation: 10,
          child: ListTile(
            leading: "${index + 1}".text.make(),
            title: "Edit and delete the text".text.make(),
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
      ),
    );
  }
}
