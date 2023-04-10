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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Favorite',
          textAlign: TextAlign.left,),
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];
          final link = links[index];
          return ListTile(
            onTap: () {
              openUrl(link);
            },
            title: Text(name),
            trailing: IconButton(
                onPressed: () {
                  provider.toggleFavorite(name, link);
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
