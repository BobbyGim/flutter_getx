import 'package:flutter/material.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 32,
                ),
                // SizedBox(
                //   width: 8,
                // ),
                Text("head"),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text("profile"),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: Text("msg"),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text("settings"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.login),
            title: Text("Login"),
          ),
        ],
      ),
    );
  }
}
