import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled2/src/application.dart';
import 'package:untitled2/src/screen/home/local_widget/local_widgets.dart';
import '../../application.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeProvider provider;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<HomeProvider>().loadCategory();
      context.read<HomeProvider>().loadProduct();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CustomText(
              text:provider.selectedCategoryId==-1?"فواكة": provider.categories[provider.selectedCategoryId-1].name,
              fontWeight: FontWeight.bold, fontSize: 15,
            ), //const Spacer(),
          ],
        ),
        backgroundColor: mainColor,
         actions: [
           FlatButton(
               onPressed: () {},
              child: Image.asset(
              "assets/images/images/shopping.png",
              width: 30,
             height: 30,
           color: Colors.white,
          )),
          ],
        leading: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.menu,
            color: Theme.of(context).buttonColor,
            size: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: getHeight(3),
          ),
          if (provider.categories.isEmpty)
            const Expanded(
                child: Center(
                    child: SpinKitRotatingPlain(
              color: Colors.black,
            )))
          else
            CustomScrollableRow(
              children: provider.categories
                  .asMap()
                  .entries
                  .map((e) => GestureDetector(
                        onTap: () => provider.changeProduct(e.key),
                        child: Container(
                          width: getHeight(15),
                          height: getHeight(15),
                          padding: const EdgeInsets.only(top: 2),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: mainColor,width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              CachedNetworkImage(
                                imageUrl: e.value.imagePath,
                                height: 50,
                                width: 50,
                              ),
                              CustomText(
                                text: e.value.name,
                                fontSize: 15,
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          if (provider.products.isEmpty)
            const Expanded(
                child: Center(
                    child: SpinKitRotatingPlain(
              color: Colors.black,
            )))
          else
            Expanded(
                child: GridView.builder(
                    itemCount: provider.products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        product: provider.products[index],
                      );
                    }))
        ],
      ),
    );
  }
}
