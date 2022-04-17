import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobber_front/views/vacancy.dart';

import '../constants.dart';
import '../models/company.dart';
import '../widgets/basic_company_card.dart';
import '../widgets/simple_company_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSilver,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: kSilver,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "JOBBER",
            style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Mokoto"),
          ),
          backgroundColor: kSilver,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 12.0,
              bottom: 12.0,
              right: 12.0,
            ),
            child: SvgPicture.asset(
              "assets/drawer.svg",
              color: kBlack,
            ),
          ),
          actions: <Widget>[
            SvgPicture.asset(
              "assets/user.svg",
              width: 25.0,
              color: kBlack,
            ),
            SizedBox(width: 18.0)
          ],
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Salam Vüqar \nArzuladığın işlərə bax",
                  style: kPageTitleStyle,
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(right: 18),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: const TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                size: 25,
                                color: kBlack,
                              ),
                              border: InputBorder.none,
                              hintText: "Elə indi Axtar"),
                        ),
                      )),
                      // icon setting
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(left: 12.0),
                        decoration: BoxDecoration(
                          color: kBlack,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.slidersH,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 35.0),
                Text(
                  "Popular Company",
                  style: kTitleStyle,
                ),
                SizedBox(height: 15.0),
                Container(
                  width: double.infinity,
                  height: 190.0,
                  child: ListView.builder(
                    itemCount: companyList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var company = companyList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Vacancy(
                                company: company,
                              ),
                            ),
                          );
                        },
                        child: index == 0
                            ? BasicCompanyCard(company: company)
                            : SimpleCompanyCard2(company: company),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
