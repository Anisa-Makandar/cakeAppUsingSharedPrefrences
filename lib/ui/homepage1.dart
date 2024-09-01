import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrencesapp2/domain/routing%20page.dart';

class HomePagee extends StatefulWidget {
  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  SharedPreferences? prefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    prefs = await SharedPreferences.getInstance();

                    await prefs!.setBool('isLoggedIn', false);
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.LOGIN_PAGE_ROUTE);
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => LoginPage()),
                    // );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: 0.1,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFF34503C),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/bg_homepage.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Cacke Rush Shop',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFBC8C8F),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.In publishing and graphic design, Lorem ipsum is a placeholder text .',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
