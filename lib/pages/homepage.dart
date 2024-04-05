import 'package:flutter/material.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/Widgets/selected_candidate.dart';
import 'package:vote/constant.dart';
import 'package:vote/pages/screen/categories.dart';

class HomePage extends StatefulWidget {
  final int initalTabIndex;

  const HomePage({
    super.key,
    required this.initalTabIndex,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int selectedIndex;
  List<Map<String, String>> selectedCandidates = [];

  void addCandidate(Map<String, String> candidate) {
    setState(() {
      selectedCandidates.add(candidate);
    });
  }

  // delete function
  void deleteCandidate(int index) {
    setState(() {
      selectedCandidates.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initalTabIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: selectedIndex,
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            title: const Text(
              'Voting App',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: white,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: mainColor,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Categories',
                ),
                Tab(
                  text: 'Selected',
                )
              ],
              labelColor: white,
              unselectedLabelColor: black,
              indicator: BoxDecoration(color: mainColor),
            ),
          ),
          drawer: const CustomDrawer(),
          body: TabBarView(
            children: [
              CategoriesPage(addCandidate: addCandidate),
              SelectedCandidatesPage(
                selectedCandidates: selectedCandidates,
                onDelete: deleteCandidate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
