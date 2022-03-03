  import 'package:untitled2/src/application.dart';

import '../screens.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashProvider provider;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      pushReplacement(HomeScreen(),HomeProvider());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<SplashProvider>();
    return  Scaffold(
      body: Center(
        child: Image.asset("assets/images/images/splash.png"),
      ),
    );
  }
}
  