import 'package:untitled2/src/application.dart';

class RequestScreen extends StatelessWidget {
  late RequestProvider provider;

  @override
  Widget build(BuildContext context) {
    Future _showDialog() {
      final AlertDialog art = AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        contentPadding: const EdgeInsets.only(
          bottom: 10,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        actionsPadding: const EdgeInsets.only(bottom: 20),
        content: SizedBox(
          height: 150,
          width: provider.size,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: ButtonTheme(
                    minWidth: 15,
                    child: FlatButton(
                      onPressed: () {
                        pop();
                        push(MainMenuScreen(), MainMenuProvider());
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
                      text: "الفاتورة",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    CustomText(
                      text:"تم ارسال الفاتورة الى بريدك الاكترونى",
                        fontSize: 18,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      );
      return showDialog(context: context, builder: (_) => art);
    }

    provider = context.watch<RequestProvider>();
    return  Scaffold(
            appBar: AppBar(
              backgroundColor: mainColor,
              title: const CustomText(
                text: "طلباتى",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            body: ListView(
              children: List.generate(
                  10,
                  (index) => SizedBox(
                        height: 220,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: mainColor, width: 2),
                                //color: Colors.red
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 70,
                                    child: Row(
                                      children: [
                                        const Spacer(),
                                        SizedBox(
                                            height: 100,
                                            width: 100,
                                            child: Column(
                                              children: const [
                                                CustomText(
                                                  text: "رقم الطلبية",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),
                                                CustomText(
                                                  text: "129",
                                                  fontSize: 12,
                                                )
                                              ],
                                            )),
                                        const Spacer(),
                                        SizedBox(
                                          height: 100,
                                          width: 150,
                                          child: Column(
                                            children: const [
                                              CustomText(
                                                text: "تاريخ الطلبية",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                              CustomText(
                                                text: "129",
                                                fontSize: 12,
                                              )
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          height: 100,
                                          width: 100,
                                          child: Column(
                                            children: const [
                                              CustomText(
                                                text: "الاجمالى",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                              CustomText(
                                                text: "129",
                                                fontSize: 12,
                                              )
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 65,
                                    decoration:
                                        const BoxDecoration(color: mainGrey),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: mainColor,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                          ),
                                          Container(
                                            width: 80,
                                            height:4 ,
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: mainGreen,
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                          ),
                                          Container(
                                            width: 80,
                                            height:4 ,
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: mainBlue,
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                          ),
                                          Container(
                                            width: 80,
                                            height:4 ,
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: mainBron,
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: provider.size - 150),
                              child: FlatButton(
                                onPressed: _showDialog,
                                minWidth: MediaQuery.of(context).size.width / 3,
                                color: mainColor,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: CustomText(
                                    text:"الفاتورة",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
            ));
  }
}
