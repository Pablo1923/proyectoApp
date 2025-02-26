import 'package:flutter/material.dart';
import 'package:menu_restaurante/views/wcWidgets.dart';
import 'package:menu_restaurante/views/welcomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Center(
          child: Container(
            width: width * 0.95,
            height: height * 0.95,
            decoration: BoxDecoration(
              color: const Color(0xFF000000),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: const Color(0xFF1EFC01),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF000000),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFF0159FC),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xFFFF02D5),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xFFFAED27),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/neon2.png",
                        height: height * 0.125,
                        width: height * 0.125,
                      ),
                      const Spacer(flex: 1),
                      const Text(
                        'Usuario',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFD6F0CC),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: const SizedBox(
                          width: 180,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Digite su usuario",
                                hintStyle: TextStyle(
                                  color: Color(0xFFFAED27),
                                )),
                            style: TextStyle(
                              color: Color(0xFFFAED27),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 1),
                      const Text(
                        'Contraseña',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFD6F0CC),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: const SizedBox(
                          width: 180,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Digite su contraseña",
                                hintStyle: TextStyle(
                                  color: Color(0xFF0159FC),
                                )),
                            style: TextStyle(
                              color: Color(0xFF0159FC),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 1),
                      const Spacer(flex: 1),
                      button(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const WelcomePage();
                              },
                            ),
                          );
                        },
                        const Color(0xFF000000),
                        "Iniciar sesión",
                        180,
                        40,
                      ),
                      button(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const WelcomePage();
                              },
                            ),
                          );
                        },
                        const Color(0xFF000000),
                        "Volver",
                        180,
                        40,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
