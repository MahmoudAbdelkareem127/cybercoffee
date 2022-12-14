import 'package:coffee/product/constants/constsnts.dart';
import 'package:coffee/product/constants/image_constants.dart';
import 'package:coffee/product/extensions/context_extensions.dart';
import 'package:coffee/product/widgets/appbar/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //TODO do all values dynamic
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(context),
      appBar: const CustomAppBar(title: 'Cyber Coffee'),
      backgroundColor: kBackground,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    dashBoard(),
                    cupCounter(),
                    deliveryDashBoard(),
                  ],
                ),
                scrollableSheet(),
              ],
            ),
          ),
          navigatorBar(),
        ],
      ),
    );
  }

  floatingButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.height * 0.15),
      child: FloatingActionButton(
        backgroundColor: kCustomGreen1,
        onPressed: () {},
        //showBottomSheet(context: context, builder:bottomSheetContent),
        child: const Icon(Icons.add),
      ),
    );
  }

  dashBoard() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image: const DecorationImage(
                alignment: Alignment.topLeft, image: AssetImage(ImageConstants.cardImage), fit: BoxFit.fitHeight),
            color: kCustomGreen1,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                myCurrency(),
                addMoney(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column myCurrency() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Expanded(child: SizedBox(height: 10)),
        Expanded(
          child: Text("Toplam Param", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
        ),
        Expanded(
          child: Text(
            "55.5 TL",
            style: TextStyle(fontFamily: "Inter", fontSize: 33, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Expanded addMoney() {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const Text("Y??kleme yap", style: TextStyle(color: Colors.white)),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  cupCounter() {
    return Expanded(
      flex: 4,
      child: Container(
        // margin: const EdgeInsets.only(left: 20,right: 20,),
        color: kBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(child: Image.asset("assets/greenCup.png")),
                  const Expanded(
                    child: Text(
                      "6/15",
                      style: TextStyle(fontFamily: "Inter", fontWeight: FontWeight.w700, fontSize: 16, color: kCustomGreen2),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(child: Image.asset("assets/goldenStar.png")),
                      const Expanded(
                        child: Text(
                          "0",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  const Expanded(
                    child: Text(
                      "Y??ld??z bakiyesi",
                      style: TextStyle(fontFamily: "Inter", fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(child: Image.asset("assets/smallGreenCup.png")),
                      const Expanded(
                        child: Text(
                          "0",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  const Expanded(
                    child: Text(
                      "??kram i??ecek",
                      style: TextStyle(fontFamily: "Inter", fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: Container(
                      color: const Color(0xffDFE4EC),
                      width: 90,
                      height: 40,
                      child: const Center(
                          child: Text("Detaylar",
                              style: TextStyle(
                                  fontFamily: "Inter", fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff4D5661)))),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  deliveryDashBoard() {
    return Expanded(
        flex: 1,
        child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Container(
                  color: const Color(0xffDFE4EC),
                  width: 90,
                  height: 40,
                  child: const Center(
                      child: Text("Detaylar",
                          style: TextStyle(fontFamily: "Inter", fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff4D5661)))),
                )
              ],
            )));
  }

  scrollableSheet() {
    bool visible = true;
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      maxChildSize: 0.7,
      minChildSize: 0.2,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          child: ListView(
            shrinkWrap: true,
            controller: scrollController,
            children: [
              Image.asset("assets/Rectangle 12.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    "Kampanyalar",
                    style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff2E2D38)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset("assets/image 2.png"),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Lorem Ipsum",
                    style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff2E2D38)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Opacity(
                    opacity: visible ? 0.7 : 0.0,
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet gravida quam aliquam aenean fermentum non accumsan.",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff2E2D38),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  navigatorBar() {
    return Container(
      color: Colors.white,
      child: Card(
        shadowColor: const Color(0xff8F9BB3),
        elevation: 100,
        margin: const EdgeInsets.all(0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(
                width: 5,
              ),
              IconButton(
                icon: Image.asset(
                  "assets/greenStar.png",
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  "assets/barCup.png",
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  "assets/u_credit-card.png",
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  "assets/u_location-point.png",
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
