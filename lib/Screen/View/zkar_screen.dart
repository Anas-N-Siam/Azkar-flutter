import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZkarScreen extends StatefulWidget {
  const ZkarScreen({super.key});

  @override
  State<ZkarScreen> createState() => _ZkarScreenState();
}

class _ZkarScreenState extends State<ZkarScreen> {
  int _counter = 0;
  String _content = 'أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.tealAccent[700],
          
          title: const Text('المسبحة الإلكترونية'),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'MainScreen');
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            PopupMenuButton<String>(
                color: Colors.teal,
                icon: const Icon(Icons.menu),
                offset: const Offset(20, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onSelected: (String selectedItem) {
                  if (_content != selectedItem) {
                    setState(() {
                      _content = selectedItem;
                      _counter = 0;
                    });
                  }
                },
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      value: 'أستغفر الله',
                      child: Text(
                        'أستغفر الله',
                        style: TextStyle(fontFamily: 'Cairo'),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'الحمد لله',
                      child: Text(
                        'الحمد لله',
                        style: TextStyle(fontFamily: 'Cairo'),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'الله و أكبر',
                      child: Text(
                        'الله و أكبر',
                        style: TextStyle(fontFamily: 'Cairo'),
                      ),
                    ),
                  ];
                })
          ],
        ),
        body:  Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/zkar1.jpg'),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 125,
                    height: 125,
                    alignment: AlignmentDirectional.center,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage("images/zkar13.jpg"),
                    )
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _content,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.teal,
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            _counter.toString(),
                            style: const TextStyle(
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _counter = 0;
                          });
                        },
                        backgroundColor: Colors.teal,
                        child: Text(
                          "تصفير",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                ],
              ),
            ),
          
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: const Text("Add"),
          onPressed: () {
            setState(() {
              ++_counter;
            });
          },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
