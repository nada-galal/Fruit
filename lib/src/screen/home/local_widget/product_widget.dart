import 'package:cached_network_image/cached_network_image.dart';
import 'package:untitled2/src/application.dart';

import 'local_widgets.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    Future _showDialog() {
      final AlertDialog alert = AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: ShowDig(
          imgPath: product.imagePath,
          nameProd: product.name,
          weightUnits: product.weightUnits,
          product: product,
        ),
        insetPadding: const EdgeInsets.symmetric(horizontal: 15),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      );
      return showDialog(context: context, builder: (_) => alert);
    }

    return GestureDetector(
      onTap: (){
        final AlertDialog alert = AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: ShowDig(
            imgPath: product.imagePath,
            nameProd: product.name,
            weightUnits: product.weightUnits,
            product: product,
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 15),
          clipBehavior: Clip.antiAliasWithSaveLayer,
        );
        showDialog(context: context, builder: (_) => alert);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border: Border.all(color: mainGrey, width: 3),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: product.imagePath,
              width: 120,
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, right: 10, left: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: product.name,
                        fontSize: 15,
                      ),
                      const CustomText(
                        text: "10",
                      ),
                    ],
                  ),
                  const Spacer(),
                  FlatButton(
                      minWidth: 20,
                      height: 50,
                      color: mainGrey,
                      onPressed: _showDialog,
                      child: Image.asset(
                        "assets/images/images/shopping.png",
                        width: 25,
                        height: 25,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
