import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayZkarScreen extends StatefulWidget {
  const DayZkarScreen({super.key});

  @override
  State<DayZkarScreen> createState() => _DayPageState();
}

class _DayPageState extends State<DayZkarScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.white,
              backgroundColor: Colors.tealAccent[700],
              title: const Text("أذكار الصباح والمساء"),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'MainScreen');
                },
                icon: const Icon(Icons.arrow_back),
              )),
          body: PageView(
            controller: controller,
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.tealAccent[700],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "أذكار الصباح",
                              style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "أَصْبَحْنا عَلَى فِطْرَةِ الْإِسْلاَمِ، وَعَلَى كَلِمَةِ الْإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صلى الله عليه وسلم، وَعَلَى مِلَّةِ أَبِينَا إِبْرَاهِيمَ، حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ الْمُشرِكِينَ",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ رَبِّ الْعَالَمِينَ، اللَّهُـمَّ إِنِّي أَسْأَلُكَ خَيْرَ هَذَا الْيَوْمِ:فَتْحَهُ، وَنَصْرَهُ، وَنورَهُ، وَبَرَكَتَهُ، وَهُدَاهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِيهِ وَشَرِّ مَا بَعْدَهُ",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "بِسْمِ اللَّهِ الَّذِي لاَ يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلاَ فِي السّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.tealAccent[700],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "أذكار المساء",
                              style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "أَصْبَحْنا عَلَى فِطْرَةِ الْإِسْلاَمِ، وَعَلَى كَلِمَةِ الْإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صلى الله عليه وسلم، وَعَلَى مِلَّةِ أَبِينَا إِبْرَاهِيمَ، حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ الْمُشرِكِينَ",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ رَبِّ الْعَالَمِينَ، اللَّهُـمَّ إِنِّي أَسْأَلُكَ خَيْرَ هَذَا الْيَوْمِ:فَتْحَهُ، وَنَصْرَهُ، وَنورَهُ، وَبَرَكَتَهُ، وَهُدَاهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِيهِ وَشَرِّ مَا بَعْدَهُ",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "بِسْمِ اللَّهِ الَّذِي لاَ يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلاَ فِي السّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 450,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            "اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
