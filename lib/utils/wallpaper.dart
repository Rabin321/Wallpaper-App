import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Wallpaper extends StatefulWidget {
  const Wallpaper({Key? key}) : super(key: key);

  @override
  State<Wallpaper> createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  @override
  void initState() {
    super.initState();
    fetchapi();
  }

// function to fetch data from api.
  fetchapi() async {
    await http.get(Uri.parse('https://api.pexels.com/v1/curated?per_page=80'),
        headers: {
          'Authorization':
              '563492ad6f91700001000001255b2b09d6d2442cb3c43445e0b84ecc'
        }).then((value) {
      print(value
          .body); //"page":1,"per_page":80,"photos":[{"id":11719116,"width":4000,"height":6000,"url":"https://www.pexels.com/photo/close-up-shot-of-palm-leaves-11719116/","photographer":"Mathilde Langevin","photographer_url":"https://www.pexels.com/@mathilde","photographer_id":157994802,"avg_color":"#7D7D7D","src":{"original":"https://images.pexels.com/photos/11719116/pexels-photo-11719116.jpeg","large2x":"https://images.pexels.com/photos/11719116/pexels-photo-11719116.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
    
    
    Map = });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 2),
                  itemCount: 80,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                    );
                  }),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.black,
            child: const Center(
              child: Text(
                'Load more',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
