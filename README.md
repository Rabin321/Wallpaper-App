# Wallpaper App

🎥 Wallpaper app powered by pexels API.


## API
Wallpaper app uses pexels api in order to fetch pictures.

#### from the pexels api site https://api.pexels.com/v1/curated

```flutter
  fetchapi() async {
    await http.get(Uri.parse('https://api.pexels.com/v1/curated?per_page=80'),
        headers: {
          'Authorization':
              'API KEY' // https://api.pexels.com/v1/curated
        }).then((value) {
      // print(value
      //     .body);
      Map result = jsonDecode(value.body);
      // print(result);
      setState(() {
        images = result['photos'];
      });
    });
  }


```

##  Screenshots

<img src ="https://user-images.githubusercontent.com/53074799/163684017-3584088c-6fc0-4ee1-8e90-8cd834bc4f29.PNG" width="300" height="700">
<img src ="https://user-images.githubusercontent.com/53074799/163684021-1a6a94a0-78d2-430b-9f3c-5635ae38991c.PNG" width="300" height="700">
<img src ="https://user-images.githubusercontent.com/53074799/163684022-816b67f9-81d5-44ef-a8e1-4cc6fb10a31a.PNG" width="300" height="700">
