import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:tg_pr/widget/dash_lines.dart';

class ChartAnalysisCard extends StatefulWidget {
  const ChartAnalysisCard({Key? key}) : super(key: key);

  @override
  State<ChartAnalysisCard> createState() => _ChartAnalysisCardState();
}

class _ChartAnalysisCardState extends State<ChartAnalysisCard> {
  List<ChartAnalysisModel> data = [
    ChartAnalysisModel('Mon', 0),
    ChartAnalysisModel('Mon', 0),
    ChartAnalysisModel('Mon', 0),
    ChartAnalysisModel('Mon', 0),
    ChartAnalysisModel('Tue', 11),
    ChartAnalysisModel('Wed', 0),
    ChartAnalysisModel('Thur', 0),
    ChartAnalysisModel('Fri', 6),
    ChartAnalysisModel('Sat', 0),
    ChartAnalysisModel('Sun', 10),
    ChartAnalysisModel('Mon', 0),
    ChartAnalysisModel('Tue', 0),
    ChartAnalysisModel('Wed', 0),
    ChartAnalysisModel('Thur', 11),
    ChartAnalysisModel('Fri', 11),
    ChartAnalysisModel('Sat', 0),
    ChartAnalysisModel('Sun', 20),
    ChartAnalysisModel('Mon', 0),
    ChartAnalysisModel('Tue', 0),
    ChartAnalysisModel('Wed', 11),
    ChartAnalysisModel('Thur', 0),
    ChartAnalysisModel('Fri', 0),
    ChartAnalysisModel('Sat', 0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        margin: const EdgeInsets.all(4.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/feres.png'),
                    maxRadius: 30,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Feres Transport',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Http://www.feres.com',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff858585),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Text(
                    '500',
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(width: 5),
                  const DashLines()
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                //Initialize the spark charts widget
                child: SfSparkLineChart.custom(
                  color: Colors.green,
                  //Enable the trackball
                  trackball: const SparkChartTrackball(
                      activationMode: SparkChartActivationMode.tap),
                  //Enable marker
                  marker: const SparkChartMarker(
                      displayMode: SparkChartMarkerDisplayMode.none),
                  //Enable data label
                  labelDisplayMode: SparkChartLabelDisplayMode.none,
                  xValueMapper: (int index) => data[index].year,
                  yValueMapper: (int index) => data[index].usage,
                  dataCount: 20,
                  axisLineColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Row(children: [
                Text(
                  '0',
                  style: GoogleFonts.poppins(
                      fontSize: 10, fontWeight: FontWeight.w300),
                ),
                const SizedBox(width: 5),
                const DashLines()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartAnalysisModel {
  ChartAnalysisModel(this.year, this.usage);

  final String year;
  final double usage;
}
