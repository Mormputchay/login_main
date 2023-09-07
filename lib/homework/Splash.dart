import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff89dfff),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Positioned(
                right: 53,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(253, 0, 0, 42),
                  width: 120,
                  height: 130,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                    color: Color(0xfffb6668),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 88, 20),
                width: 323,
                height: 117,
                child: Stack(
                  children: [
                    Positioned(
                      child: Align(
                        child: SizedBox(
                          width: 121,
                          height: 117,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(58.5),
                              color: Color(0xfffb6668),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      // heading6nb (59:266)
                      left: 32,
                      top: 10,
                      child: Align(
                        child: SizedBox(
                          width: 255,
                          height: 101,
                          child: Text(
                            'Welcome to \nPHSAR TECH',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // namecopymtj (59:265)
                margin: EdgeInsets.fromLTRB(0, 0, 19, 16),
                constraints: BoxConstraints(
                  maxWidth: 292,
                ),
                child: Text(
                  'We are thrilled to have you here, and we\'re excited to show you the innovative solutions we\'ve developed to help your business thrive.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.3333333333,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // nextbuttonU2T (73:41)
                margin: EdgeInsets.fromLTRB(65, 0, 65, 97),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(91, 17, 91, 17),
                    width: double.infinity,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Color(0xffca3335),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x4c0fda88),
                          offset: Offset(0, 2),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 4, 4.42, 4),
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // autogroupcgtfdhy (WPTvE5zjdQDcvfeLHkCgtF)
                margin: const EdgeInsets.fromLTRB(0, 0, 29, 0),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 88, 0),
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: Color(0xfffb6668),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 36),
                      width: 121,
                      height: 230,
                      child: Image.asset(
                        "assets/image/cute.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
