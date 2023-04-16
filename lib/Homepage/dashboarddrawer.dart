import 'package:flutter/material.dart';

import '../pallete.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Drawer(
      width: size.width*0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    );
  }
  Widget buildHeader(BuildContext context) => Container(
    color: Pallete.backgroundColor,
    padding: EdgeInsets.only(
      top: 25 + MediaQuery.of(context).padding.top,
    ),
    child: Column(
      children: const [
        CircleAvatar(
          radius: 52,
          backgroundImage: AssetImage('assets/images/user.jpg'),
        ),
        SizedBox(height: 15),
        Text('Thulasiyan',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20,
             ),),
        SizedBox(height: 10),
        Text('15A001',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),),
        SizedBox(height: 10),
        // ListTile(
        //   horizontalTitleGap: 50,
        //   title: Text('Thulasiyan',
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20,
        //     ),
        //   ),
        //   subtitle: Text('15A001',style: TextStyle(
        //     fontWeight: FontWeight.normal,
        //     fontSize: 15,
        //   ),),
        //
        // )
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Expanded(
    child: Column(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [const SizedBox(
        height: 10,
      ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ListTile(
            iconColor: Colors.black,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.settings_rounded),
            title: const Text('Settings',
                style: TextStyle(
                  fontSize: 18.0,
                )),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const SettingsView()));
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ListTile(
            iconColor: Colors.black,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.key),
            title: const Text('Reset password',
                style: TextStyle(
                  fontSize: 18.0,
                )),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const SettingsView()));
            },
          ),
        ),

        const SizedBox(
          height: 100,
        ),
        const Spacer(),
        const Divider(
          color: Colors.blueGrey,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ListTile(
              iconColor: Colors.blueAccent,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                // Future logout() async {
                //   await FirebaseAuth.instance.signOut().then((value) =>
                //       Navigator.of(context).pushAndRemoveUntil(
                //           MaterialPageRoute(
                //               builder: (context) => LoginScreen()),
                //               (route) => false));
                // }


              }),
        )
      ],
    ),
  );
}


