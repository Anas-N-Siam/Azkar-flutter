import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainPageState();
}

class _MainPageState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.tealAccent[700],
          title: Text(
            "حصن المسلم",
            style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.dark_mode))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.tealAccent[700],
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("images/zkar8.jpg"),
                    ),
                    accountName: Text('Anas Siam'),
                    accountEmail: Text("Anas2001@gmail.com")),
                ListTile(
                  textColor: Colors.black12,
                  selected: true,
                  title: Text(
                    "الرئيسية",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "الصفحة الرئيسية للتطبيق",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.home_outlined,
                    size: 35,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  textColor: Colors.black12,
                  selected: false,
                  title: Text(
                    "المسبحة الإلكترونية",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "عرض المسبحة الإلكترونية",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.new_releases,
                    size: 35,
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'ZkarScreen');
                  },
                ),
                ListTile(
                  textColor: Colors.black12,
                  selected: false,
                  title: Text(
                    "الأدعية اليومية",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "عرض الأدعية اليومية",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.assignment,
                    size: 35,
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'DayScreen');
                  },
                ),
                ListTile(
                  textColor: Colors.black12,
                  selected: false,
                  title: Text(
                    "تنبيهاتي",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "عرض التنبيهات اليومية",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.access_alarm,
                    size: 35,
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'TaskScreen');
                  },
                ),
                ListTile(
                  textColor: Colors.black12,
                  selected: false,
                  title: Text(
                    "خروج",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "الخروج من التطبيق",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.logout,
                    size: 35,
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'LoginScreen');
                  },
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
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
                      "الأدعية المأثورة",
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ))),
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
                      "اللهم اهدني فيمن هديت، وعافني فيمن عافيت، وتولني فيمن توليت، وبارك لي فيما أعطيت، وقني شرما قضيت، إنه لا يذل من واليت، تباركت ربنا وتعاليت",
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
                      "اللهم اغفر لي، اللهم اجعلني يوم القيامة فوق كثير من خلقك من الناس، اللهم اغفر لي ذنبي، وأدخلني يوم القيامة مدخلا كريما",
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
                      "اللهم إني أعوذ بك من عذاب النار، وأعوذ بك من عذاب القبر، وأعوذ بك من الفتن ما ظهر منها وما بطن، وأعوذ بك من فتنة الدجال",
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
                      "اللهم زدنا ولا تنقصنا، وأكرمنا ولا تهنا، وأعطنا ولا تحرمنا، وآثرنا ولا تؤثر علينا، وأرضنا وارض عنا",
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
                      "اللهم قني شر نفسي، واعزم لي على أرشد أمري، اللهم اغفر لي ما أسررت، وما أعلنت، وما أخطأت، وما عمدت، وما علمت، وما جهلت",
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ))),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
