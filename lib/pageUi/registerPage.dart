import 'package:farm_ugg_14/pageUi/main.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final fioController = TextEditingController();
  final parolController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/image3.png',
                      height: 240,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 30, left: 30, bottom: 30, top: 48),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 21,
                              color: Color.fromARGB(255, 12, 121, 210)),
                        ),
                        const Text(
                          'Sign to your account',
                          style: TextStyle(
                            color: Color.fromARGB(255, 120, 162, 196),
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        const Text(
                          'Введите ваше имя',
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 121, 210)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 238, 245, 255)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(
                                'assets/user.png',
                                height: 22,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: TextFormField(
                                  maxLength: 35,
                                  controller: fioController,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 8, 66, 114)),
                                  decoration: const InputDecoration(
                                      hintText: 'Умурзаков Элдор',
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 120, 162, 196)),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Введите пароль',
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 121, 210)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 238, 245, 255)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(
                                'assets/lock.png',
                                height: 22,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 8,
                                  controller: parolController,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 8, 66, 114),
                                  ),
                                  obscureText: _showText,
                                  decoration: InputDecoration(
                                    hintText: '•••••••••',
                                    hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 110, 157, 196),
                                    ),
                                    border: InputBorder.none,
                                    suffixIcon: GestureDetector(
                                      child: _showText
                                          ? const Icon(
                                              Icons.visibility_outlined)
                                          : const Icon(
                                              Icons.visibility_off_outlined),
                                      onTap: () {
                                        setState(() {
                                          _showText = !_showText;
                                        });
                                      },
                                    ),
                                    suffixIconColor:
                                        const Color.fromARGB(255, 29, 103, 163),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                            }
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ));
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color.fromARGB(255, 5, 40, 90)),
                            child: const Center(
                                child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
