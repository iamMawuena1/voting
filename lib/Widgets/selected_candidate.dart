import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

import 'selectedtile.dart';

// class SelectedCandidatesPage extends StatefulWidget {
//   const SelectedCandidatesPage({
//     super.key,
//   });

//   @override
//   State<SelectedCandidatesPage> createState() => _SelectedCandidatesPageState();
// }

// class _SelectedCandidatesPageState extends State<SelectedCandidatesPage> {
//   final List<Map<String, String>> selectedCandidates = [];

//   //delete function
//   void deleteCandidate(int index) {
//     setState(() {
//       selectedCandidates.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: selectedCandidates.length,
//       itemBuilder: (context, index) {
//         final candidate = selectedCandidates[index];
//         return SelectedPage(
//           imagePath: candidate['imagePath']!,
//           categoryName: candidate['categoryName']!,
//           candidateName: candidate['candidateName']!,
//           onDelete: () => deleteCandidate(index),
//         );
//       },
//     );
//   }
// }

class SelectedCandidatesPage extends StatelessWidget {
  final List<Map<String, String>> selectedCandidates;
  final void Function(int) onDelete;

  const SelectedCandidatesPage({
    super.key,
    required this.selectedCandidates,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedCandidates.isEmpty
          ? Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Image.asset(
                    'assets/vote.gif',
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    'Select candidates from the categories page',
                    style: TextStyle(fontSize: 14, color: kGrey),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: selectedCandidates.length,
              itemBuilder: (context, index) {
                final candidate = selectedCandidates[index];
                return SelectedPageListTile(
                  image: AssetImage(candidate['imagePath']!),
                  title: candidate['categoryName']!,
                  description: candidate['candidateName']!,
                  onDelete: () {
                    onDelete(index);
                  },
                );
              },
            ),
    );
  }
}
