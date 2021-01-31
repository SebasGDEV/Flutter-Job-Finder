import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx_test/model/popular_job_mode.dart';

class JobInfo extends StatefulWidget {
  final JobModel jobinfo;

  const JobInfo({this.jobinfo});

  @override
  _JobInfoState createState() => _JobInfoState();
}

class _JobInfoState extends State<JobInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  child: Hero(
                    tag: 'CompanyLogo',
                    child: Image.network(
                      widget.jobinfo.companyLogo,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Text(widget.jobinfo.company),
              )
            ],
          ),
        ),
      ),
    );
  }
}
