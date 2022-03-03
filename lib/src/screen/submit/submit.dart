  import 'package:untitled2/src/application.dart';


class SubmitScreen extends StatelessWidget {
  late SubmitProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = context.watch<SubmitProvider>();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getHeight(100) / 5,
            ),
            SizedBox(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/images/request.png",
                    width: 250,
                    height: 250,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text:"تم ارسال طلبك بنجاح",

                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: mainGreen
                  ),
                  const CustomText(
                    text: "نسعد دائما لخدمتكم وتلبيه طالباتكم",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    child: FlatButton(
                      onPressed: () {
                        push(RequestScreen(),RequestProvider());
                      },
                      minWidth: MediaQuery.of(context).size.width,
                      color: mainColor,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 23, vertical: 10),
                        child: CustomText(
                          text: "قائمة طلباتى",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
  