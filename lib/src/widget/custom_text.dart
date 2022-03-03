import 'package:untitled2/src/application.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType type;
  final bool textType;
  final Color cal;

  const CustomTextField({required this.type, this.textType = false,this.cal =Colors.yellow });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child:  Theme(
          data:  ThemeData(
            primaryColor: Colors.yellow,
            // primaryColorDark: Colors.red,
          ),
          child:TextFormField(
            style: const TextStyle(
              color: Color.fromRGBO(181, 4, 36, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            keyboardType: type,
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(
                  width: 2,
                  color: cal,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.yellow,
                ),
              ),
            ),
            obscureText: textType,
            cursorColor: Colors.yellow,
            onSaved: (val) {},
            validator: (val) {},
          ),
        ));
  }
}
  