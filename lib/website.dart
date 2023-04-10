class Website {
  String name;
  String link;
  String image;

  Website({
    required this.name,
    required this.link,
    required this.image,
  });
}

var website = [
  Website(name: 'Shopee', link: 'https://shopee.co.id/', image: 'image/shopee.jpeg'),
  Website(name: 'Github', link: 'https://github.com/', image: 'image/github.png'),
  Website(name: 'Tiktok', link: 'https://www.tiktok.com/', image: 'image/tiktok.png'),
  Website(name: 'Youtube', link: 'https://www.youtube.com/', image: 'image/youtube.jpg'),
  Website(name: 'Facebook', link: 'https://www.facebook.com/', image: 'image/facebook.png'),
];
