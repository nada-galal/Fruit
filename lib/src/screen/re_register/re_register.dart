  import 'package:untitled2/src/application.dart';
import 'package:untitled2/src/widget/custom_text.dart';


class ReRegisterScreen extends StatelessWidget {
  late ReRegisterProvider provider;
  
  @override
  Widget build(BuildContext context) {
    provider = context.watch<ReRegisterProvider>();
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              appBar: AppBar(),
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
                          "استرجاع كلمة المرور",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.red),
                        ),
                      ),
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
                              const  SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const Text(
                                  "ادخل الكود",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              CustomTextField(
                                type: TextInputType.number,
                                cal: Colors.grey.withOpacity(0.3),
                              ),
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
                              CustomTextField(
                                type: TextInputType.emailAddress,
                                cal: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 2),
                                child: const Text(
                                  "كلمة المرور الجديدة",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              CustomTextField(
                                type: TextInputType.text,
                                textType: true,
                                cal: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 3),
                                child: const Text(
                                  " تاكيد كلمة المرور الجديدة",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              CustomTextField(
                                type: TextInputType.text,
                                textType: true,
                                cal: Colors.grey.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                onPressed: () {},
                                minWidth: MediaQuery.of(context).size.width,
                                color: Colors.yellow,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 12),
                                  child: Text(
                                    "تغيير كلمة المرور",
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
      },
    );
  }
}
  