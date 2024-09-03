import 'dart:developer';

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
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        return context.read<ProfileBloc>().add(const FetchProfileEvent());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Users Profile"),
        ),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            log("UIlist ::${state.userList}");
            if (state.userList!.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.errorState != null) {
              return Center(child: Text(state.errorState!.message));
            }

            return ListView.builder(
              itemCount: state.userList?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person_2),
                  ),
                  title: Text(state.userList![index].name.toString()),
                  subtitle: Text(state.userList![index].email.toString()),
                );
              },
            );
            // state.when(
            //   initial: () => const Center(child: CircularProgressIndicator()),
            //   loading: () => const Center(child: CircularProgressIndicator()),
            // success: (userlist) => ListView.builder(
            //   itemCount: userlist.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       leading: const CircleAvatar(
            //         child: Icon(Icons.person_2),
            //       ),
            //       title: Text(userlist[index].name.toString()),
            //       subtitle: Text(userlist[index].email.toString()),
            //     );
            //   },
            // ),
            // error: (error) => Center(child: Text(error.message)),
            // );
          },
        ),
      ),
    );
  }
}
