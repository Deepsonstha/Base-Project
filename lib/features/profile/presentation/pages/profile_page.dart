import 'package:base_project/core/common_widgets/custom_clear_text_form_field.dart';
import 'package:base_project/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const FetchProfileEvent());
  }

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Users Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomClearTextFormField(
                // isSuffix: true,
                suffix: const Icon(Icons.abc),
                controller: _emailController,
              ),
            ],
          ),
        )
        // BlocBuilder<ProfileBloc, ProfileState>(
        //   builder: (context, state) {
        //     return state.when(
        //       initial: () => const Center(child: CircularProgressIndicator()),
        //       loading: () => const Center(child: CircularProgressIndicator()),
        //       success: (userlist) => ListView.builder(
        //         itemCount: userlist.length,
        //         itemBuilder: (context, index) {
        //           return ListTile(
        //             leading: const CircleAvatar(
        //               child: Icon(Icons.person_2),
        //             ),
        //             title: Text(userlist[index].name.toString()),
        //             subtitle: Text(userlist[index].email.toString()),
        //           );
        //         },
        //       ),
        //       error: (error) => Center(child: Text(error.message)),
        //     );
        //   },
        // ),
        );
  }
}
