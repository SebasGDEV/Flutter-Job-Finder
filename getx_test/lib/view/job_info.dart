import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_test/model/popular_job_mode.dart';
import 'package:getx_test/view/home_page.dart';

class JobInfo extends StatefulWidget {
  final JobModel jobinfo;

  const JobInfo({this.jobinfo});

  @override
  _JobInfoState createState() => _JobInfoState();
}

class _JobInfoState extends State<JobInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
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
      body: Center(
        child: Text('Jobinfo'),
      ),
    );
  }
}
