  import 'package:untitled2/src/application.dart';
import 'package:untitled2/src/widget/custom_text.dart';


class EditScreen extends StatelessWidget {
  late EditProvider provider;
  
  @override
  Widget build(BuildContext context) {
    provider = context.watch<EditProvider>();
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: const Text(
                  "تعديل بياناتى",
                  textAlign: TextAlign.right,
                ),
              ),
              body: Directionality(
                textDirection: TextDirection.ltr,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "بياناتى",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.red),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      child: Center(
                          child: Text("عدل بياناتك بتعبئة الحقول من جديد")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "اسم العميل",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.right,
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
                                child: const Text(
                                  "رقم الجوال",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              const CustomTextField(type: TextInputType.number),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const Text(
                                  "البريد الاكترونى",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              const CustomTextField(type: TextInputType.emailAddress),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const Text(
                                  "كلمة المرور",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
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
                                child: const Text(
                                  "تاكيد كلمة المرور",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
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
                                },
                                minWidth: MediaQuery.of(context).size.width,
                                color: Colors.yellow,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 12),
                                  child: Text(
                                    "حفظ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
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
              )),
    );
  }
}
  