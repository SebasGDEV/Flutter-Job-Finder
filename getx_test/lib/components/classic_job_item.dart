import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_test/model/popular_job_mode.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassicJobItem extends StatefulWidget {
  @required
  final JobModel popularJob;

  ClassicJobItem(this.popularJob);

  @override
  _ClassicJobItemState createState() => _ClassicJobItemState();
}

class _ClassicJobItemState extends State<ClassicJobItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.grey[100],
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        // color: (widget.isSelected) ? Colors.black : Colors.grey[200],
        width: MediaQuery.of(context).size.width * 0.8,
        height: 100,
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.network(widget.popularJob.companyLogo),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Text(
                    widget.popularJob.name,
                    style: GoogleFonts.montserrat(fontSize: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
