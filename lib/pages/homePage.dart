import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phonelogin/components/actionButton.dart';
import 'package:phonelogin/components/circleContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: const Icon(Icons.video_call_rounded),
      ),
      appBar: AppBar(
              title: Image.asset('assets/images/logo.png',
              width: 140,
              height: 60,

          ),

        actions: [
          actionBtn(icon: Icons.account_balance_wallet_outlined , onTap: (){}),
          const SizedBox(width: 7,),
          actionBtn(onTap: (){} , icon: Icons.headset_mic_outlined),
          const SizedBox(width: 7,),
          actionBtn(icon: Icons.notifications,onTap: (){}),
          const SizedBox(width: 10,),
          const Icon(FontAwesomeIcons.bars),
          const SizedBox(width: 7,),
        ],
      ),
     bottomNavigationBar: BottomNavigationBar(
       items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,) , label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black,) , label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.black,) , label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,) , label: ''),
       ],
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black87)
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                          child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 17),
                          child: TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 14),
                             hintText: 'Search astrologer, astromail products',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )
                            ),
                          ),
                        ),
                      )),
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5),
                          )
                        ),
                        child: const Center(
                          child:
                          Icon(Icons.search_outlined,
                          color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
              ),

             const Padding(
               padding: EdgeInsets.only(top:30),
               child: Text('Daily Horoscope',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ),
              const SizedBox(height: 20,),
              const Text('The stars are on your favor, you cant be horrible. They wont let you down!',style: TextStyle(fontSize: 15,),),

             /*
              The part of list view
             */

           Column(
                children: [
                  Wrap(
                    children: [
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                      circleBox(),
                    ],
                  )
                ],
              ),

              //  Carousel Part





            ], // main Column
          ),
        ),
      )
    );
  }
}
