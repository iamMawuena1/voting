import 'package:flutter/material.dart';
import 'package:vote/Widgets/vote_button.dart';
import 'package:vote/constant.dart';

class CategoriesPage extends StatelessWidget {
  final void Function(Map<String, String> candidate) addCandidate;
  CategoriesPage({
    super.key,
    required this.addCandidate,
  });

  final List<Map<String, dynamic>> categories = [
    {
      'name': 'President',
      'candidates': [
        {'name': 'Maxwell Opare', 'imagePath': 'assets/man.png'},
        {'name': 'OK Basit', 'imagePath': 'assets/man.png'},
        {'name': 'Dan Lartey', 'imagePath': 'assets/man.png'},
      ],
    },
    {
      'name': 'Vice President',
      'candidates': [
        {'name': 'Vivian Opare', 'imagePath': 'assets/man.png'},
        {'name': 'James Sah', 'imagePath': 'assets/man.png'},
        {'name': 'Mary Lartey', 'imagePath': 'assets/man.png'},
      ],
    },
    {
      'name': 'PRO',
      'candidates': [
        {'name': 'Sarah Smith', 'imagePath': 'assets/man.png'},
        {'name': 'James Fisher', 'imagePath': 'assets/man.png'},
        {'name': 'Dan Lagazy', 'imagePath': 'assets/man.png'},
      ],
    },
    {
      'name': 'Secretary',
      'candidates': [
        {'name': 'Mawuli Gator', 'imagePath': 'assets/man.png'},
        {'name': 'Eli Ola', 'imagePath': 'assets/man.png'},
        {'name': 'Sela Duh', 'imagePath': 'assets/man.png'},
      ],
    },
    {
      'name': 'Financial Officer',
      'candidates': [
        {'name': 'Mawusi', 'imagePath': 'assets/man.png'},
        {'name': 'Mawuena', 'imagePath': 'assets/man.png'},
        {'name': 'Mawutor', 'imagePath': 'assets/man.png'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: categories
                .map<Widget>((category) => _buildCandidateContainer(category))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildCandidateContainer(Map<String, dynamic> category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category['name'],
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 200,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: mainColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(category['candidates'].length, (index) {
              final candidate = category['candidates'][index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(candidate['imagePath']),
                  ),
                  Text(candidate['name']),
                  VoteButton(
                      width: 70,
                      height: 40,
                      votePressed: () {
                        addCandidate({
                          'imagePath': candidate['imagePath'],
                          'categoryName': category['name'],
                          'candidateName': candidate['name'],
                        });
                      }),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
