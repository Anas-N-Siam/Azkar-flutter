import 'package:azkar/Screen/Auth/singup_screen.dart';
import 'package:azkar/model/Users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage("images/zkar11.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "تسجيل دخول",
                    style: GoogleFonts.cairo(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "مرحبا بك في تطبيق الأذكار",
                    style: GoogleFonts.cairo(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child:  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: name,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "اسم المستخدم"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child:  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "كلمة المرور"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: () {
                        
                          if ("Anas" == name.text && "12345" == password.text) {
                            Navigator.pushReplacementNamed(context, 'MainScreen');
                          }else{
                            showDialog(
                              context: context,
                              builder: (context){
                                return const Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: AlertDialog(
                                    title: Text("خطأ في البيانات"),
                                    content: Text("خطأ في اسم المستخدم أو كلمة المرور"),
                                    // titleTextStyle: TextStyle(
                                    //   fontFamily: 'cairo',
                                    // ),
                                  ),
                                );
                              }
                            );
                          }
                        
                      
                      },
                      child: Container(
                        width: 500,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.tealAccent[700],
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 1,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ليس لدي حساب:",
                        style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'SignUp');
                          },
                          child: Text(
                            "إنشاء حساب جديد",
                            style:
                                GoogleFonts.cairo(fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
