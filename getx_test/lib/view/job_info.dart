import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx_test/constants.dart';
import 'package:getx_test/model/popular_job_mode.dart';

class JobInfo extends StatefulWidget {
  final JobModel jobInfo;

  const JobInfo({this.jobInfo});

  @override
  _JobInfoState createState() => _JobInfoState();
}

class _JobInfoState extends State<JobInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                widget.jobInfo.company,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
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
                  flex: 8,
                  child: SizedBox.expand(),
                ),
                Expanded(
                  flex: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Image.network(
                      widget.jobInfo.companyLogo,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Center(child: Text(widget.jobInfo.name)),
                ),
                Expanded(
                  flex: 10,
                  child: Text(
                    widget.jobInfo.salary,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Center(
                                child: Text('Full time'),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Center(
                                child: Text('Remote'),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Center(
                                child: Text('Anywhere'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Text('Description'),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Text.rich(
                    TextSpan(
                        text:
                            'El equipo de desarrollo de michelada.io está contratando personas con experiencia programando Ruby, con la habilidad de ser autosuficientes, que les guste colaborar y enseñar a otras personas, que busquen hacer una diferencia en su lugar de trabajo y que sean un apoyo para que nuestro equipo crezca y vaya por un camino mas solido.'),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Text.rich(
                    TextSpan(
                        text:
                            'El equipo de desarrollo de michelada.io está contratando personas con experiencia programando Ruby, con la habilidad de ser autosuficientes, que les guste colaborar y enseñar a otras personas, que busquen hacer una diferencia en su lugar de trabajo y que sean un apoyo para que nuestro equipo crezca y vaya por un camino mas solido.'),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Text.rich(
                    TextSpan(
                        text:
                            'El equipo de desarrollo de michelada.io está contratando personas con experiencia programando Ruby, con la habilidad de ser autosuficientes, que les guste colaborar y enseñar a otras personas, que busquen hacer una diferencia en su lugar de trabajo y que sean un apoyo para que nuestro equipo crezca y vaya por un camino mas solido.'),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Text.rich(
                    TextSpan(
                        text:
                            'El equipo de desarrollo de michelada.io está contratando personas con experiencia programando Ruby, con la habilidad de ser autosuficientes, que les guste colaborar y enseñar a otras personas, que busquen hacer una diferencia en su lugar de trabajo y que sean un apoyo para que nuestro equipo crezca y vaya por un camino mas solido.'),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
