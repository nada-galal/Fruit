
import 'package:untitled2/src/application.dart';

class RequestProvider extends ChangeNotifier{
  double size = getWidth(100);
  dynamic showDialog(BuildContext context) {
    final AlertDialog art = AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      contentPadding: const EdgeInsets.only(bottom: 10,),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      actionsPadding: const EdgeInsets.only(bottom: 20),
      content: SizedBox(
        height: 150,
        width:size,
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
                    children:const [
                      Text(
                        "الفاتورة",
                        style:
                        TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
                      ),
                      Text(
                        "تم ارسال الفاتورة الى بريدك الاكترونى",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
    return ;
      //showDialog(context: context, builder: (con) => art);
  }

}
  