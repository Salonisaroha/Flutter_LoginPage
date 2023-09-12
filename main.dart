import 'package:app/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
              child: SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 251, 116, 5),
              title: const Text('Fitness Zone'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.comment),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  tooltip: 'Setting Icon',
                  onPressed: () {},
                ),
              ],
              elevation: 50.0,
              // leading: IconButton(
              //   icon: const Icon(Icons.menu),
              //   tooltip: 'Menu Icon',
              //   onPressed: () {},
              // ),
            ),
            body: SafeArea(
                child: Column(children: [
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 70,
                    width: 50,
                    image: AssetImage('assets/fitness.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maintenance',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Rubik-Medium',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2d3142))),
                      Text('Box',
                          style: TextStyle(
                            fontFamily: 'Rubik-Medium',
                            fontSize: 27,
                            color: Color.fromARGB(255, 251, 116, 5),
                          )),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 14),
              InkWell(
                onTap: () {
                  print("Login Clicked");
                },
                child: const Center(
                    child: Text('Login',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik-Medium',
                            color: Color(0xff2d3142)))),
              ),
              const SizedBox(height: 14),
              const Center(
                  child: Text(
                      'It gives perfect Fitness if you are  enthusiastic',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontFamily: 'Rubik-Medium', fontSize: 14))),
              // const SizedBox(height:20),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: const Color.fromARGB(255, 223, 227, 232),
                        filled: true,
                        prefixIcon: const Icon(Icons.alternate_email,
                            color: Color(0xff323F4B)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 217, 221, 225)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 217, 221, 225)),
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              //const SizedBox(height: 35),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: const Color.fromARGB(255, 223, 227, 232),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_open,
                            color: Color(0xff323F4B)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 217, 221, 225)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 217, 221, 225)),
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Phone no.',
                        fillColor: const Color.fromARGB(255, 223, 227, 232),
                        filled: true,
                        prefixIcon: const Icon(Icons.phone_android_outlined,
                            color: Color(0xff323F4B)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 217, 221, 225)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 217, 221, 225)),
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              const SizedBox(height: 150),
              InkWell(
                onTap: () {
                  print("GOAT");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 251, 116, 5),
                    ),
                    child: const Center(
                      child: Text('Login',
                          style: TextStyle(
                            fontFamily: 'Rubik-Regular',
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    )),
              ),
              const SizedBox(height: 16),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Do not have an account?',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontFamily: 'Rubik-  Regular', fontSize: 16)),
                Text('Log in?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Rubik-Medium',
                        fontSize: 18,
                        color: Color.fromARGB(255, 251, 116, 5))),
              ]),
            ]))));
  }
}
