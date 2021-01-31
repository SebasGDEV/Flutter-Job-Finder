import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_test/components/classic_job_item.dart';
import 'package:getx_test/components/popular_job_item.dart';
import 'package:getx_test/controller/popular_jobs_controller.dart';

import 'package:google_fonts/google_fonts.dart';

int currentIndex = 0;
PopularJobController _controller = Get.put(PopularJobController());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List colors = [Colors.red, Colors.green, Colors.yellow];

  //LIFECYCLE
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.userAstronaut,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          //NO HEIGHT
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Are you looking for a job?',
                  style: GoogleFonts.montserrat(fontSize: 36),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Popular Jobs',
                    style: GoogleFonts.montserrat(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: PageView.builder(
                  onPageChanged: _controller.selectedPageIndex,

                  //(selectedIndex)
                  // {
                  //setState(() {
                  //currentIndex = selectedIndex;
                  //  });
                  // },
                  controller: _controller.pageController,
                  itemCount: popularJobsList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => PopularJobItem(
                          _controller.selectedPageIndex.value == index
                              ? true
                              : false,
                          popularJobsList[index]),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Recent Jobs',
                    style: GoogleFonts.montserrat(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: ListView.builder(
                  itemCount: popularJobsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClassicJobItem(popularJobsList[index]);
                  },
                ),
              ),
              // Expanded(
              //   flex: 10,
              //   child: Container(
              //     width: 200,
              //     height: 10,
              //     color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
              //         .withOpacity(1.0),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
