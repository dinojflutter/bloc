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
        body: Center(
          child: Text('cTEGORIES'),
        ));
  }
}
