import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:phonelogin/components/elevbutton.dart';
import 'package:phonelogin/components/outlinebtn.dart';
import 'package:phonelogin/pages/otpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var select = '+91';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
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
                    'assets/images/panapng.png',
                    height: height / 3,
                    width: width,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
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
                          'Hi Welcome!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Submit your Mobile number',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '__________________Log in or sign up__________________',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: CountryCodePicker(
                                  padding: const EdgeInsets.all(10),
                                  enabled: true,
                                  initialSelection: select,
                                  flagWidth: 40,
                                  showFlagDialog: true,
                                  alignLeft: true,
                                  showFlagMain: true,
                                  // showDropDownButton: true,
                                  onChanged: (value) {
                                    select = value.toString();
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 200,
                                child: Padding(
                                  padding: EdgeInsets.only(top:10),
                                  child: TextField(

                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                       hintText: 'Enter Mobile number',
                                        border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Own btn

                        ElevatedBtn(
                          title: 'SEND OTP',
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return OtpPage();
                              },
                            ));
                          }
                        ),


                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '__________________________or__________________________',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        OutlineBtn(
                          icon: Icons.email,
                          onTap: (){},
                          title: 'Continue with Email Id',
                        ),

                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By signing up, you agree to our ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Terms of Use ',
                                style: TextStyle(
                                    color: Colors.yellowAccent, fontSize: 10),
                              ),
                              Text(
                                'and ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Privacy Polic ',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.yellowAccent),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
