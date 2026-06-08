import 'package:flutter/material.dart';
import 'splash_screen_two.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    /// MOVE TO NEXT SCREEN
    Future.delayed(
      const Duration(seconds: 3),
      () {

        Navigator.pushReplacement(
          context,

          MaterialPageRoute(
            builder: (context) =>
                const SplashScreenTwo(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF4F7FB),

      body: Center(

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            /// LOGO
            Container(
              height: 120,
              width: 120,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(35),

                boxShadow: [
                  BoxShadow(
                    color:
                        Colors.orange.withOpacity(
                            0.25),
                    blurRadius: 40,
                    spreadRadius: 5,
                    offset: const Offset(0, 10),
                  )
                ],
              ),

              child: const Icon(
                Icons.motorcycle,
                size: 55,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 40),

            /// TITLE
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,

              children: [

                const Text(
                  "MOTO",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2,
                    color: Color(0xff1E293B),
                  ),
                ),

                Text(
                  "SELL",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2,
                    color: Colors.orange.shade600,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Text(
              "RIDE. TRADE. CONNECT.",
              style: TextStyle(
                color: Colors.cyan,
                letterSpacing: 3,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 60),

            const Padding(
              padding:
                  EdgeInsets.symmetric(
                      horizontal: 40),

              child: LinearProgressIndicator(
                minHeight: 5,
                backgroundColor:
                    Colors.black12,
                valueColor:
                    AlwaysStoppedAnimation(
                        Colors.cyan),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Loading...",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            )
          ],
        ),
      ),
    );
  }
}