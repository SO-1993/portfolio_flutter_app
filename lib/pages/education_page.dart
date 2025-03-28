import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  EducationPage({super.key});

  final List<String> _certificationItems = [
    'Google Cybersecurity Certificate (2024)',
    'ISC2: Certified in Cybersecurity (2023)',
  ];

  final List<String> _educationItems = [
    'Postgraduate Certificate of Education (2018-2019)',
    'MA Philosophy: 1:1 (2016-2017)',
    'BA Philosophy: 2:1 (2012-2016)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Text(
            'Certifications',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _certificationItems.length,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.circle, size: 8),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _certificationItems[index],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20), //Space between the lists
          Text(
            'Education',
            style: Theme.of(context).textTheme.titleLarge, 
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _educationItems.length,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.circle, size: 8),
                  const SizedBox(width: 8), // Space between BP and text
                  Expanded(
                    child: Text(
                      _educationItems[index],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
