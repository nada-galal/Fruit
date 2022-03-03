import 'package:untitled2/src/application.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late CartProvider provider;

  Future _showDialog() {
    final AlertDialog art = AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        contentPadding: const EdgeInsets.only(
          bottom: 10,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        actionsPadding: const EdgeInsets.only(bottom: 20),
        content: SizedBox(
          height: getHeight(15),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: ButtonTheme(
                    minWidth: 15,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 25,
                      ),
                    ),
                  )),
              Positioned(
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomText(
                      text: "فضلا",
                      fontSize: 25, fontWeight: FontWeight.bold
                    ),
                    CustomText(
                      text:"سجل دخولك اولا لاستكمال الشراء",
                        fontSize: 18,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                FlatButton(
                  onPressed: () {
                    push(RegisterScreen(), RegisterProvider());
                  },
                  color: mainColor,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: CustomText(
                      text:"عميل جديد",
                      fontWeight: FontWeight.bold, fontSize: 15
                    ),
                  ),
                ),
                const Spacer(),
                FlatButton(
                  onPressed: () {
                    push(EnterScreen(), EnterProvider());
                  },
                  color: mainColor,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: CustomText(
                      text:"دخول",
                      fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ]);
    return showDialog(context: context, builder: (_) => art);
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<CartProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const CustomText(
          text: "السلة",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 280,
            child: ListView(
              children: List.generate(
                  10,
                  (index) => Container(
                        width: double.infinity - 50,
                        height: getHeight(18),
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          elevation: 0,
                          child: Stack(
                            children: [
                              ButtonTheme(
                                minWidth: 15,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 40,
                                  top: 40,
                                  child: Image.asset(
                                    "assets/images/images/ic_fruit_category@2x.png",
                                    height: getHeight(7),
                                    width: getHeight(7),
                                  )),
                              const Positioned(
                                top: 20,
                                right: 280,
                                child: CustomText(
                                  text: "10ريال",
                                  fontSize: 12,
                                ),
                              ),
                              const Positioned(
                                top: 18,
                                right: 110,
                                child: CustomText(
                                    text: "ليمون",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Positioned(
                                  bottom: 20,
                                  right: 280,
                                  child: CustomText(
                                      text: "كيلو",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Positioned(
                                bottom: 15,
                                right: 110,
                                child: ButtonTheme(
                                  minWidth: 50,
                                  buttonColor: Colors.black87,
                                  child: FlatButton(
                                    color: mainGrey,
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FlatButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "-",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            )),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        FlatButton(
                                            onPressed: () {},
                                            child: const Icon(Icons.add))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ),
          SizedBox(
            height: getHeight(10),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: mainGrey, width: 2)),
                  height: 50,
                  child: Row(
                    children: [
                      const CustomText(
                        text: "ادخل كود الخصم ",
                        // fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      FlatButton(
                          minWidth: 20,
                          height: 50,
                          color: mainGrey,
                          onPressed: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: mainBron,
                          ))
                    ],
                  ),
                ),
                const Spacer(),
                const CustomText(
                  text: "10ريال",
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                Container(
                  width: 2,
                  height: 40,
                  decoration: const BoxDecoration(color: Colors.black26),
                ),
                const Spacer(),
                const CustomText(
                  text: "التوصيل",
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                const CustomText(
                  text: "10ريال",
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                const Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(10),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: mainGrey),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CustomText(
                        text: "الاجمالى :",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    const Spacer(),
                    const CustomText(
                      text: "140ريال",
                      fontSize: 15,
                    ),
                    const Spacer(),
                    FlatButton(
                      onPressed: _showDialog,
                      color: mainBron,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        child: CustomText(
                            text: "شراء",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
