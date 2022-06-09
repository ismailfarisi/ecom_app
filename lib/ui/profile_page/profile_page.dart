import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final user = getIt<UserBloc>().state.user;
    return Scaffold(
      body: (user == null)
          ? Stack(
              children: [
                Image.asset(
                  'assets/img/nlg_bg.jpg',
                  fit: BoxFit.fitHeight,
                  height: MediaQuery.of(context).size.height,
                ),
                Positioned(
                  bottom: 100,
                  left: 20,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushNamed('login');
                    },
                    child: const Text('Login'),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  height: 300,
                  color: const Color.fromARGB(255, 207, 216, 230),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/img/profile.webp'),
                        radius: 75,
                      ),
                      Icon(
                        Icons.image_search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 207, 216, 230),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: theme.bodyText1
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            user.name ?? '',
                            style: theme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 207, 216, 230),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email',
                            style: theme.bodyText1
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            user.email ?? '',
                            style: theme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 207, 216, 230),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Phone Number',
                            style: theme.bodyText1
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            user.phoneNo ?? '',
                            style: theme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      getIt<UserBloc>().add(const UserEvent.logoutRequested());
                    },
                    child: const Text('Logout'),
                    style: ButtonStyle(
                        maximumSize:
                            MaterialStateProperty.all(Size.fromHeight(56))),
                  ),
                )
              ],
            ),
    );
  }
}
