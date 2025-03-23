import 'package:base_project/features/custom_showcase_view/Components/app_bar.dart';
import 'package:base_project/features/custom_showcase_view/Components/show_case_widget.dart';
import 'package:base_project/features/custom_showcase_view/Widgets/a_app_bar_action.dart';
import 'package:base_project/features/custom_showcase_view/Widgets/b_list_view.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey globalKeyOne = GlobalKey();
  final GlobalKey globalKeyTwo = GlobalKey();
  final GlobalKey globalKeyThree = GlobalKey();
  final GlobalKey globalKeyFour = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([globalKeyOne, globalKeyTwo, globalKeyThree, globalKeyFour]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        appBarTitle: widget.title,
        centerTitle: false,
        actionWidgets: [
          ShowCaseView(globalKey: globalKeyOne, title: 'Notifications', description: 'All your notifications appear here.', child: AppBarAction(icondata: Icons.notifications, appBarFun: () {})),
          ShowCaseView(globalKey: globalKeyTwo, title: 'Profile', description: 'Edit your profile details here.', child: AppBarAction(icondata: Icons.person, appBarFun: () {}))
        ],
      ),
      body: ListViewBldr(globaleKey: globalKeyThree),
      floatingActionButton: ShowCaseView(
        globalKey: globalKeyFour,
        title: 'Add Users',
        description: 'Add new user data by clicking this button.',
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
