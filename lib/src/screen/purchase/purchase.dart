import 'package:untitled2/src/application.dart';

class PurchaseScreen extends StatefulWidget {
  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  late PurchaseProvider provider;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read()<PurchaseProvider>().selectDate(context);
      context.read()<PurchaseProvider>().selectTime(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<PurchaseProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const CustomText(
          text: "الشراء",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      body: Theme(
        data: ThemeData(unselectedWidgetColor: mainGrey),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          color: mainGrey,
                          child: const Icon(
                            Icons.timer,
                            size: 25,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "اختر وقت التوصيل المناسب لك",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      children: [
                        FlatButton.icon(
                            minWidth: (getWidth(100) / 2) - 30,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: mainColor, width: 2),
                                borderRadius: BorderRadius.circular(2)),
                            onPressed: () => provider.selectDate(context),
                            icon: const Icon(
                              Icons.date_range,
                              size: 25,
                            ),
                            label: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "${provider.currentDate.month} / ${provider.currentDate.day} / ${provider.currentDate.year}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            )),
                        const Spacer(),
                        FlatButton.icon(
                            minWidth: (getWidth(100) / 2) - 30,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.yellow, width: 2),
                                borderRadius: BorderRadius.circular(3)),
                            onPressed: () => provider.selectDate(context),
                            icon: const Icon(
                              Icons.date_range,
                              size: 30,
                            ),
                            label: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "${provider.currentDate.month} / ${provider.currentDate.day} / ${provider.currentDate.year}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Divider(
                  color: Colors.black26,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          color: mainGrey,
                          child: const Icon(
                            Icons.monetization_on_outlined,
                            size: 25,
                          ),
                        ),
                        const Spacer(),
                        const CustomText(
                            text: "اختر طريقة الدفع المناسبة لك",
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Row(children: [
                      Radio(
                        value: true,
                        groupValue: true,
                        onChanged: (bool? value) {},
                        activeColor: mainColor,
                        //fillColor:  MaterialStateColor.resolveWith((states) => mainColor),
                      ),
                      //const Spacer(),
                      const CustomText(
                          text: "الدفع كاش عند الاستلام",
                          color: mainBron,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                      const Spacer(),
                    ]),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Divider(
                  color: Colors.black26,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          color: mainGrey,
                          child: const Icon(
                            Icons.location_on_outlined,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const CustomText(
                            text: "حدد عنوانك علي الخريطه",
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Divider(
                  color: Colors.black26,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7.6,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 10, bottom: 10),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "ملاحظات على الطلب",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: mainColor,
                      ),
                    ),
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 11,
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
                          onPressed: () {
                            push(SubmitScreen(), SubmitProvider());
                          },
                          color: mainBron,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            child: CustomText(
                                text: "شراء",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
