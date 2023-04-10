import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './favorite.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final names = provider.names;
    final links = provider.links;
    final images = provider.images;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Favorite',
            textAlign: TextAlign.left,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];
          final link = links[index];
          final imagee = images[index];
          return ListTile(
            minVerticalPadding: 20,
            onTap: () {
              openUrl(link);
            },
            leading: Image.asset(imagee,
              height: 100,
              width: 100,
              fit: BoxFit.cover,),
            title: Text(name,
            style: TextStyle(fontSize: 40),),
            subtitle: Text(link),
            trailing: IconButton(
                onPressed: () {
                  provider.toggleFavorite(name, link, imagee);
                },
                icon: provider.isExist(name)
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite_border)),
          );
        },
      ),
    );
  }
}

Future<void> openUrl(String url, {bool forceWebView = false}) async {
  await launchUrlString(url);
}