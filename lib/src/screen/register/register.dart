  import 'package:untitled2/src/application.dart';
import 'package:untitled2/src/widget/custom_text.dart';


class RegisterScreen extends StatelessWidget {
  late RegisterProvider provider;
  
  @override
  Widget build(BuildContext context) {
    provider = context.watch<RegisterProvider>();
        return Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: const CustomText(
                  text: "عميل جديد",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              body: ListView(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 50,
                      child: Center(
                        child: CustomText(
                         text: "نسعد بخدمتكم",
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.red),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                      child: Center(
                          child: CustomText(text:"سجل عضويتك لنتمكن من تلبيه احياجاتك",fontSize: 15,)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: CustomText(
                                 text: "اسم العميل",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                               const CustomTextField(
                                type: TextInputType.name,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const CustomText(
                                 text: "رقم الجوال",

                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                ),
                              ),
                              const CustomTextField(type: TextInputType.number),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const CustomText(
                                 text: "البريد الاكترونى",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                ),
                              ),
                              const CustomTextField(type: TextInputType.emailAddress),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const CustomText(
                                  text:"كلمة المرور",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                ),
                              ),
                              const CustomTextField(
                                type: TextInputType.text,
                                textType: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const CustomText(
                                  text: "تاكيد كلمة المرور",

                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                ),
                              ),
                              const CustomTextField(
                                type: TextInputType.text,
                                textType: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                onPressed: () {
                                  push(PurchaseScreen(),PurchaseProvider());
                                },
                                minWidth: MediaQuery.of(context).size.width,
                                color: Colors.yellow,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 12),
                                  child: CustomText(
                                    text: "تسجيل",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
        );
  }
}
  