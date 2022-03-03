import 'package:untitled2/src/application.dart';
import 'package:untitled2/src/widget/custom_text.dart';

class EnterScreen extends StatefulWidget {
  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  late EnterProvider provider;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<EnterProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const CustomText(
          text: "دخول",
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(children: [
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 50,
          child: Center(
            child: CustomText(
              text: "اهلا بعودتك (: ",
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromRGBO(181, 4, 36, 1),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
          child: Center(
              child: CustomText(
            text: "سجل دخولك وتابع مشترياتك بكل سهولة",
            fontWeight: FontWeight.bold,
            fontSize: 15,
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: CustomText(
                      text: "رقم الجوال",
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const CustomTextField(
                    type: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 2),
                    child: const CustomText(
                        text: "كلمة المرور",
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const CustomTextField(
                    type: TextInputType.text,
                    textType: true,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        activeColor: Colors.yellow,
                      ),
                      const CustomText(
                        text: "تذكرنى",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      const Spacer(),
                      FlatButton(
                        onPressed: () {},
                        child: const CustomText(
                            text: "نسيت كلمة المرور",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  FlatButton(
                    onPressed: () {
                      push(PurchaseScreen(), PurchaseProvider());
                    },
                    minWidth: MediaQuery.of(context).size.width,
                    color: mainColor,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      child: CustomText(
                          text: "دخول",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ])))
      ]),
    );
  }
}
