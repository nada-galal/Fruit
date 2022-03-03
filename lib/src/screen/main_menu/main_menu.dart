  import 'package:untitled2/src/application.dart';


class MainMenuScreen extends StatefulWidget {
  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  late MainMenuProvider provider;

  @override
  Widget build(BuildContext context) {
    Future _showDialog() {
      final AlertDialog art = AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        contentPadding: const EdgeInsets.only(bottom: 10,),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        content: SizedBox(
          height: 500,
          width: getWidth(100),
          child: SingleChildScrollView(
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
                        children:  [
                          const Text(
                            "مراسلة الادارة",
                            style:
                            TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
                          ),
                          const Text(
                            "سيتم التواصل معكم فورا لاستلام رسائلكم",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 30,),
                        provider.buildTextFormField(TextInputType.text,false,context,"احمد عمرانى",80),
                          provider.buildTextFormField(TextInputType.number,false,context,"رقم الجوال",80),
                          provider.buildTextFormField(TextInputType.number,false,context,"الرسالة",120,len: 4),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: FlatButton(
                              onPressed: () {
                              },
                              minWidth: MediaQuery.of(context).size.width-80,
                              color: mainColor,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10),
                                child: Text(
                                  "ارسال",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      );
      return showDialog(context: context, builder: (_) => art);
    }
    provider = context.watch<MainMenuProvider>();
    return  Scaffold(
            appBar: AppBar(
              title: const Text("قائمة"),
              leading: const Icon(Icons.menu),
            ),
            body: Column(
                  children: [
                    SizedBox(
                      height: 170,
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                        child: Row(
                          children: [
                             Center(
                                child: Column(
                                  children:  [
                                    provider.buildInkWell(Icons.water_damage_outlined,(){}),
                                    const Text(
                                      "الرئسية",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Center(
                                child: Column(
                                  children: [
                                    provider.buildInkWell(Icons.edit,(){
                                      push(EditScreen(),EditProvider());
                                    }),
                                    const Text(
                                      "تعديل بياناتى",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Center(
                                child: Column(
                                  children: [
                                    provider.buildInkWell(Icons.request_page,(){}),
                                    const Text(
                                      "طباتى",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Center(
                                child: Column(
                                  children:[

                                    provider.buildInkWell(Icons.exit_to_app,(){}),
                                    const Text(
                                      "خروج",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Divider(
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: FlatButton.icon(
                                      height: 70,
                                      minWidth:
                                      (MediaQuery.of(context).size.width /
                                          2) -
                                          30,
                                      color: mainGreen,
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.navigation_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      label: const Text(
                                        "123364456",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )),
                                ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: FlatButton.icon(
                                    height: 70,
                                    minWidth:
                                    (MediaQuery.of(context).size.width /
                                        2) -
                                        30,
                                    color: mainBlue,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.phone_in_talk_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    label: const Text(
                                      "123364456",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),),

                            ],
                          ),
                          Row(
                            children: [
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: SizedBox(
                                  height: 50,
                                  width: getWidth(100)/ 2,
                                  child: ListTile(
                                    leading: Container(
                                        decoration:
                                        const BoxDecoration(color: mainBron),
                                        height: 50,
                                        width: 50,
                                        child: const Center(
                                            child: Icon(
                                              Icons.share,
                                              size: 30,
                                              color: Colors.white,
                                            ))),
                                    title: const Text("مشاركة التطبيق"),
                                  ),
                                ),
                              ),
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: SizedBox(
                                  height: 50,
                                  width:
                                  getWidth(100) / 2,
                                  child: InkWell(
                                    onTap: _showDialog,
                                    child: ListTile(
                                      leading: Container(
                                          decoration:
                                          const BoxDecoration(color: mainBron),
                                          height: 50,
                                          width: 50,
                                          child: const Center(
                                              child: Icon(
                                                Icons.email,
                                                size: 30,
                                                color: Colors.white,
                                              ))),
                                      title: const Text("مراسلة الادارة"),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Divider(
                          color: Colors.black,
                        )),
                    const SizedBox(
                      height: 200,
                      child:  ListTile(
                          title: Padding(
                            padding:  EdgeInsets.only(right: 10,top: 5),
                            child: Text("عن التطبيق",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                            child: Text(
                              "برنامج يقوم بتوصيل الخضار والفواكة والتمور الطازجة الى بيتك فى خطوات سهلة وقصيرة كل احتياجاتك تصل الى مكانك كما لو كنت تشترى بنفسك ، لن نتنازل عن اختيار افضل الاصناف الطازجة والجودة العالية",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
                            ),
                          ),
                        ),
                    )
                  ],
                ));
  }
}
  