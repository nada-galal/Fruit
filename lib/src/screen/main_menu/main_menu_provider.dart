  import 'package:untitled2/src/application.dart';

class MainMenuProvider extends ChangeNotifier{
  Container buildTextFormField(TextInputType type,bool textType,BuildContext context,String str,double het,{int len = 1}) {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,),
      height: het,
      width: getWidth(100) -30,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          style:  const TextStyle(
            color: Color.fromRGBO(181, 4, 36, 1),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          keyboardType: type,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            hintText: str,
            hintStyle:  const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder:  const OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.yellow,
              ),
            ),
            focusedBorder:  const OutlineInputBorder(
              borderSide:BorderSide(
                width: 2,
                color: Colors.yellow,
              ),
            ),
          ),
          obscureText: textType,
          maxLines: len,
          cursorColor: Colors.yellow,
          onSaved: (val) {},
          validator: (val) {},
        ),
      ),
    );
  }
  InkWell buildInkWell(IconData icon,  void Function() fan) {
    return InkWell(
        onTap: fan,
        child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: mainColor,
                ),
                borderRadius: BorderRadius.circular(3)),
            child: Icon(
              icon,
              size: 35,
            )));
  }
}
  