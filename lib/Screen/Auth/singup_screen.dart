import 'package:azkar/model/Users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SingUpScreen> {
  TextEditingController email = TextEditingController();
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
                    "إنشاء حساب",
                    style: GoogleFonts.cairo(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "إنشاء حساب للحصول على الميزات",
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "الإيميل"),
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
                      child: Padding(
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
                        // Users s = Users(email.text, name.text, password.text);
                        // Users.user.add(s);
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
                        "لدي حساب بالفعل:",
                        style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'LoginScreen');
                          },
                          child: Text(
                            "تسجيل الدخول",
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
