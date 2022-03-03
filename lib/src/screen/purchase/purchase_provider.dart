  import 'package:untitled2/src/application.dart';

class PurchaseProvider extends ChangeNotifier{
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime currentDate = DateTime.now();

  Future<void>selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      //initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {

        selectedTime = timeOfDay;
    }
    notifyListeners();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate) {
      currentDate = pickedDate;
      notifyListeners();
    }
  }
}
  