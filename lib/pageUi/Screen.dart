import 'package:farm_ugg_14/pageUi/registerPage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({super.key,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 49),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 20, 82, 133)),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.asset(
                        'assets/user.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Text(
                    'Пользователь',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icon.png',
                    height: 35,
                    width: 23,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Stack(
                  children: [
                    Image.asset('assets/Card1.png'),
                    const Padding(
                      padding: EdgeInsets.only(left: 18, top: 18),
                      child: Text(
                        'Зарегистрируйтесь\nчтобы открыть карту',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 61, 167, 253),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomRight: Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(55, 60, 60, 60),
                                blurRadius: 20,
                                offset: Offset(-4, -4)),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'открыть карту',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 6.0, left: 12, bottom: 6),
                          child: Text(
                            'Новости',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 32,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(55, 60, 60, 60),
                                    blurRadius: 5)
                              ]),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Узнать больше',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Эфективность вакцины\nСпутник',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Health  |  Июнь 16,2021',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7),
                          child: Image.asset(
                            'assets/tabletki.png',
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Эфективность вакцины\nСпутник',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Health  |  Июнь 16,2021',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7),
                          child: Image.asset(
                            'assets/tabletki.png',
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(top: 6.0, left: 12, bottom: 6),
                          child: Text(
                            'Скидки',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 32,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(55, 60, 60, 60),
                                    blurRadius: 5)
                              ]),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Увидеть больше',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue,
                                  size: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(55, 60, 60, 60),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white),
                      height: 155,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text(
                              'Product name',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 109, 182),
                                  fontSize: 16),
                            ),
                            const Text(
                              'Препарат от кашля',
                              style: TextStyle(fontSize: 13),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                'assets/maz.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(55, 60, 60, 60),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white),
                      height: 155,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Text(
                              'Product name',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 109, 182),
                                  fontSize: 16),
                            ),
                            const Text(
                              'Препарат от кашля',
                              style: TextStyle(fontSize: 13),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                'assets/maz.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
