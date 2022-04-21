import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(30.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/svg/movie_night.svg",
                height: getProportionateScreenHeight(200),
                width: getProportionateScreenWidth(280),
              ),
              const SizedBox(height: 40),
              Text(
                "Welcome to Movie Ark",
                style: TextStyle(
                  color: white,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: SizeConfig.screenWidth * 0.6,
                height: 45,
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: white,
                    backgroundColor: primaryColor
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
