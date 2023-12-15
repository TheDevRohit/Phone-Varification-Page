import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:phonelogin/pages/Done.dart';
import 'package:phonelogin/pages/signUpPage.dart';

import '../components/elevbutton.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var value = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 14),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xffFF725E),
                ),
                height: height * 0.55,
                width: width,

                // container child

                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome back!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: '',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                  
                        const Text(
                          'Enter Your credentials to access your account',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                  
                        // Email and Password Fields
                  
                        Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Email Address',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              height: 46,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your Email',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                  
                            const SizedBox(
                              height: 10,
                            ),
                  
                            const Text(
                              'Password',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                  
                            Container(
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              height: 46,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: TextFormField(

                                  controller: passController,
                                  decoration: const InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(value: value, onChanged: (val) {
                              setState(() {
                                value = val!;
                              });
                            }),
                            const Text('Remember for 30 days',style: TextStyle(color: Colors.white)),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Forgot password?")),
                          ],
                        ),
                       const SizedBox(height: 5,),
                        ElevatedBtn(
                            title: 'Login',
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return const DonePage();
                                },
                              ));
                            }),
                  
                        const SizedBox(
                          height: 5,
                        ),
                  
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                   foregroundColor: Colors.white
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/google.png',height: 40,width: 40,),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text('Google'),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                              child:  Row(
                                children: [
                                  Image.asset('assets/images/Apple.png',height: 40,width: 40,),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text('Apple'),
                                ],
                              ),
                            ),
                          ],
                        ),
                       const SizedBox(height: 5,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                           children:[
                             const Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                              TextButton(onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                              }, child: const Text('Sign Up'))
                       ]),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
