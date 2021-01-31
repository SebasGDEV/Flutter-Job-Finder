import 'package:flutter/material.dart';
import 'package:getx_test/model/popular_job_mode.dart';

class PopularJobItem extends StatefulWidget {
  @required
  final bool isSelected;
  @required
  final PopularJobModel popularJob;

  PopularJobItem(this.isSelected, this.popularJob);

  @override
  _PopularJobItemState createState() => _PopularJobItemState();
}

class _PopularJobItemState extends State<PopularJobItem> {
  @override
  Widget build(BuildContext context) {
    print('is selected value : ${widget.isSelected}');
    return Card(
      // elevation: 4,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        color: (widget.isSelected) ? Colors.black : Colors.grey[200],
        width: 250,
        height: 100,
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Image.network(
                      widget.popularJob.companyLogo,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Expanded(flex: 2, child: SizedBox.expand()),
                  Expanded(
                    flex: 10,
                    child: Center(
                      child: Text(
                        widget.popularJob.salary,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 17,
                            color: (widget.isSelected)
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: SizedBox.expand()),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Text(
                    widget.popularJob.name,
                    style: TextStyle(
                        fontSize: 17,
                        color:
                            (widget.isSelected) ? Colors.white : Colors.black),
                  ),
                  Expanded(flex: 2, child: SizedBox.expand()),
                  Row(
                    children: [
                      Text(
                        widget.popularJob.company,
                        style: TextStyle(
                          fontSize: 15,
                          color:
                              (widget.isSelected) ? Colors.white : Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '${widget.popularJob.daysRemaining} days remaining',
                        style: TextStyle(
                          fontSize: 10,
                          color:
                              (widget.isSelected) ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
