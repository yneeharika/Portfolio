import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class EducationEntry {
  final String date;
  final String title;
  final String description;

  EducationEntry({
    required this.date,
    required this.title,
    required this.description,
  });
}

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  // Define your education entries
  final List<EducationEntry> educationEntries = [
    EducationEntry(
      date: '25 April 2016',
      title: 'Passed 10th',
      description: '10th grade from Ap board and with 98% of marks were secured by me',
    ),
    EducationEntry(
      date: '10th April 2018',
      title: 'Passed 12th',
      description: '12th grade from telangana board with 98%',
    ),
    EducationEntry(
      date: '25 April 2021',
      title: 'Completed Degree',
      description: 'Graduated with a degree in bsc electronics',
    ),
    EducationEntry(
      date: '25 september 2023',
      title: 'Post Graduation',
      description: 'Graduated from cbit college in Master of Computer Applications',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.5
              : context.screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Education",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              itemCount: educationEntries.length,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                final entry = educationEntries[index];

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entry.date,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.indigo,
                          ),
                        ),
                        Text(
                          entry.title,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          entry.description,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Education(),
      ),
    ),
  );
}


