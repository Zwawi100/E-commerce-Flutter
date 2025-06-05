import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/profile_view_model.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = "profilepage";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (_) {
  final vm = ProfileViewModel();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    // vm.loadProfile();
  });
  return vm;
},

      child: Scaffold(
        appBar: AppBar(title: const Text('Profile')),
        body: Consumer<ProfileViewModel>(
          builder: (context, vm, _) {
            if (vm.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (vm.error != null) {
              return Center(child: Text('Error: ${vm.error}'));
            } else if (vm.profile == null) {
              return const Center(child: Text('No profile data.'));
            } else {
              final profile = vm.profile!;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${profile.name}',
                        style: const TextStyle(fontSize: 18)),
                    const SizedBox(height: 8),
                    Text('Email: ${profile.email}',
                        style: const TextStyle(fontSize: 18)),
                    const SizedBox(height: 8),
                    Text('Phone: ${profile.phone}',
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
