import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './favorite.dart';
import './favorite_list.dart';
import './website.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebsiteList extends StatelessWidget {
  const WebsiteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Website'),
        ),
      ),
      body: ListView.builder(
        itemCount: website.length,
        itemBuilder: (context, index) {
          final Website web = website[index];
          return ListTile(
            minVerticalPadding: 20,
            onTap: () {
              openUrl(web.link);
            },
            leading: Image.asset(
              web.image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            title: Text(
              web.name,
              style: TextStyle(fontSize: 40),
            ),
            subtitle: Text(web.link),
            trailing: IconButton(
                onPressed: () {
                  provider.toggleFavorite(web.name, web.link, web.image);
                },
                icon: provider.isExist(web.name)
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
