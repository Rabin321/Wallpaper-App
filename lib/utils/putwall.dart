import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

class Putwall extends StatefulWidget {
  final String imageurl;

  const Putwall({
    Key? key,
    required this.imageurl,
  }) : super(key: key);

  @override
  State<Putwall> createState() => _PutwallState();
}

class _PutwallState extends State<Putwall> {
  Future setwallpaper() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageurl);
    bool result = await WallpaperManager.setWallpaperFromFile(
      file.path,
      location,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.network(widget.imageurl),
            ),
          ),
          InkWell(
            onTap: () {},
            // child: Expanded(
            child: Container(
              height: 40,
              width: double.infinity,
              color: Colors.black,
              child: const Center(
                child: Text(
                  'Set Wallpaper',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),

            // ),
          ),
        ],
      )),
    );
  }
}
