import 'package:flutter/material.dart';
import 'package:phonelogin/components/OtpBox.dart';
import 'package:phonelogin/components/elevbutton.dart';
import 'package:phonelogin/components/outlinebtn.dart';
import 'package:phonelogin/pages/Done.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  var select = '';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/small Rectangle 2.jpg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/pana.png',
                      height: height / 3,
                      width: width,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 14, right: 14, top: 14),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Color(0xffFF725E),
                    ),
                    height: height * 0.5,
                    width: width,

                    // container child

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'OTP Verification',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'An 4 digit code has been sent to your number',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "00:56",
                                style: TextStyle(color: Colors.white),
                              )),
                          const SizedBox(
                            height: 10,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OtpBox(),
                                OtpBox(),
                                OtpBox(),
                                OtpBox(),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20,),

                          ElevatedBtn(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => DonePage())));
                            },
                            title: 'Verify OTP',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("If you din't receive a code!",
                                  style: TextStyle(color: Colors.white),
                              ),
                              TextButton(onPressed: (){}, child: Text("Resend",style: TextStyle(color: Colors.yellowAccent),)),
                            ],
                          ),
                         const SizedBox(
                            height: 5,
                          ),
                          OutlineBtn(
                            title: 'Continue with Email Id',
                            onTap: () {},
                            icon: 'assets/images/mobile.png'
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
