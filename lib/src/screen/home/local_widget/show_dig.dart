import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:untitled2/src/application.dart';
class ShowDig extends StatefulWidget {
  final Product product;
  final String nameProd;
  final String imgPath;
  final List<WeightUnit> weightUnits;

  const ShowDig({
    required this.nameProd,
    required this.imgPath,
    required this.weightUnits,
    required this.product,
  });

  @override
  State<ShowDig> createState() => _ShowDigState();
}

class _ShowDigState extends State<ShowDig> {
  late HomeProvider provider;
  late List<String> items = widget.weightUnits
      .asMap()
      .entries
      .map((e) => e.value.weightUnit)
      .toList();
  late String dropdownvalue = widget.weightUnits.first.weightUnit ;
  late int weighId = widget.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue).id;
  late double  strFirstProd= double.parse(widget.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue)
      .startFrom) ;
  late double strProd = strFirstProd ;
  late double  priceFirstProd = double.parse(widget.weightUnits
      .firstWhere((element) => element.weightUnit == dropdownvalue).weightPrice);
  late double price =  priceFirstProd;
  @override
  Widget build(BuildContext context) {
    provider= context.read<HomeProvider>();
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 150,
            child: Stack(
              children: [
                Positioned(
                  top: 1,
                  right: 3,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        pop();
                      },
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    top: 80,
                    child: CachedNetworkImage(
                      imageUrl: widget.imgPath,
                      height: 100,
                      width: 100,
                    )),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    color: mainGrey,
                    child: DropdownButton(
                      iconEnabledColor: mainBron,
                      dropdownColor: mainGrey,
                      iconSize: 30,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                          strFirstProd= double.parse(widget.weightUnits
                              .firstWhere((element) => element.weightUnit == dropdownvalue)
                              .startFrom) ;
                          strProd = strFirstProd;
                           weighId = widget.weightUnits
                              .firstWhere((element) => element.weightUnit == dropdownvalue).id;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: MediaQuery.of(context).size.width - 180,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  right: 3,
                  child: CustomText(
                    text: widget.nameProd,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                 Positioned(
                  top: 30,
                  left: 10,
                  child: CustomText(
                    text: "$priceريال ",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: mainBron,
                  ),
                ),
                const Positioned(
                    top: 80,
                    left: 10,
                    child: SizedBox(
                      width: 200,
                      child: CustomText(
                        text:
                            "منتج استوائى فوائده كبيره علي الجهاز التنفسى وعلاج ممتاز للزكام ونضارة البشره والشعر وتنظيم مستوى السكر بالدم",
                        maxLines: 4,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )),
                Positioned(
                  left: 80,
                  bottom: 10,
                  child: Container(
                    height: 50,
                    width: 170,
                    color: mainGrey,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            minWidth: 60,
                            height: 50,
                            onPressed: () {
                              setState(() {
                                strProd +=  strFirstProd;
                                price += priceFirstProd;
                              });
                            },
                            child: const CustomText(
                              text: "+",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        CustomText(
                          text: "$strProd",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        FlatButton(
                            onPressed: () {
                              if(strProd!=strFirstProd && price !=priceFirstProd){
                               setState(() {
                                 strProd -= strFirstProd;
                                 price -= priceFirstProd;
                               });
                              }
                            },
                            minWidth: 30,
                            height: 50,
                            child: const CustomText(
                              text: "-",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  bottom: 10,
                  child: FlatButton(
                      height: 50,
                      color: mainColor,
                      minWidth: 25,
                      onPressed: () {
                        provider.addProductToCart(widget.product.id,weighId, (strProd/strFirstProd).toInt());
                      },
                      child: Image.asset(
                        "assets/images/images/shopping.png",
                        width: 25,
                        height: 25,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
