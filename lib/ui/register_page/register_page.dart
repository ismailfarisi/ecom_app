import 'package:e_store_coorgle/core/di.dart';
import 'package:e_store_coorgle/ui/register_page/cubit/register_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../utils/status.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, this.lastRoute}) : super(key: key);
  final String? lastRoute;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late final emailController = TextEditingController();
  late final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterPageCubit>(),
      child: BlocConsumer<RegisterPageCubit, RegisterPageState>(
        listener: (context, state) {
          if (state.registerStatus == Status.success) {
            if (widget.lastRoute != null && widget.lastRoute != '') {
              context.go(widget.lastRoute!);
            } else {
              context.goNamed('home');
            }
          }
        },
        listenWhen: (c, p) => c != p,
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Image.asset(
                  'assets/img/reg_bg.jpg',
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: nameController,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return "Name is required";
                              }
                              if (val.length < 3) {
                                return "Please enter a valid name";
                              }
                            },
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Full Name',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: emailController,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Email is required';
                              }
                              if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(val)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() == true) {
                                context.read<RegisterPageCubit>().registerUser(
                                    emailController.text, nameController.text);
                              }
                            },
                            child: const Text('Register'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
