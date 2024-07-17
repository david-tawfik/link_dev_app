import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: kIsWeb?20:30,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: kIsWeb?12:16,
                        color: Colors.grey[600],
                      ),
                    ),
                    const Text(
                      'Tony Roshdy',
                      style: TextStyle(
                        fontSize:kIsWeb?14: 18,
                      ),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage('assets/images/arrow.png'),
                  width: 20,
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('assets/images/explore.png'),
                      ),
                      title: Text(
                        'Explore',
                        style: TextStyle(
                          fontSize:kIsWeb?14: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('assets/images/live.png'),
                      ),
                      title: Text(
                        'Live Chat',
                        style: TextStyle(
                          fontSize:kIsWeb?14: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('assets/images/gallery.png'),
                      ),
                      title: Text(
                        'Gallery',
                        style: TextStyle(
                          fontSize:kIsWeb?14: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('assets/images/wishlist.png'),
                      ),
                      title: Text(
                        'Wish List',
                        style: TextStyle(
                          fontSize:kIsWeb?14: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('assets/images/e-magazine.png'),
                      ),
                      title: Text(
                        'E-Magazine',
                        style: TextStyle(
                          fontSize:kIsWeb?14: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
