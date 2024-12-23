import 'package:beauty_saloon_app/utils/contants/colors.dart';
import 'package:beauty_saloon_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/splash.jpg",
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.contain,
            opacity: const AlwaysStoppedAnimation<double>(0.3),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  height: isLoginSelected
                      ? MediaQuery.sizeOf(context).height * 0.44
                      : MediaQuery.sizeOf(context).height * 0.55,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.05),
                  padding:
                      EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.06),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(65),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 30,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isLoginSelected = true;
                                });
                              },
                              child: const Text('Login'),
                              style: Theme.of(context)
                                  .elevatedButtonTheme
                                  .style!
                                  .copyWith(
                                    backgroundColor: WidgetStateProperty.all(
                                        isLoginSelected
                                            ? redColor
                                            : whiteColor),
                                    foregroundColor: WidgetStateProperty.all(
                                      isLoginSelected ? whiteColor : redColor,
                                    ),
                                  ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isLoginSelected = false;
                                });
                              },
                              child: const Text('Sign Up'),
                              style: Theme.of(context)
                                  .elevatedButtonTheme
                                  .style!
                                  .copyWith(
                                    backgroundColor: WidgetStateProperty.all(
                                      isLoginSelected ? whiteColor : redColor,
                                    ),
                                    foregroundColor: WidgetStateProperty.all(
                                      isLoginSelected ? redColor : whiteColor,
                                    ),
                                  ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CustomTextField(),
                          SizedBox(height: 15),
                          CustomTextField(),
                          SizedBox(height: 15),
                          !isLoginSelected
                              ? CustomTextField()
                              : SizedBox.shrink(),
                          !isLoginSelected
                              ? SizedBox(height: 15)
                              : SizedBox.shrink(),
                          !isLoginSelected
                              ? CustomTextField()
                              : SizedBox.shrink(),
                          !isLoginSelected
                              ? SizedBox(height: 15)
                              : SizedBox.shrink(),
                          isLoginSelected
                              ? const Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Sansation",
                                    color: Colors.white,
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/home");
                          },
                          child: Text(isLoginSelected ? 'Login' : "Sign Up"),
                        ),
                      ),
                    ],
                  ),
                ),
                !isLoginSelected
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            side: BorderSide(color: Colors.white),
                            fillColor: WidgetStatePropertyAll(Colors.white),
                          ),
                          const Text(
                            'Remenber Me ?',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Sansation",
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
