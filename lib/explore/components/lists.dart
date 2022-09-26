class SubscriptionList {
  const SubscriptionList(
      {required this.title,
      required this.discount,
      required this.displayImage,
      required this.price,
      required this.logo});
  final String title;
  final String price;
  final String discount;
  final String displayImage;
  final String logo;
}

class PublicGroups {
  const PublicGroups(
      {required this.isMonth,
      required this.title,
      required this.price,
      required this.logo});
  final String title;
  final String price;
  final bool isMonth;
  final String logo;
}

//List containing data of Subscriptions.
List<SubscriptionList> userSubscriptions = <SubscriptionList>[
  const SubscriptionList(
    title: 'Kaspersky Anti-Virus', //Name of Subscription
    discount: '57', //Discount Provided
    displayImage: 'assets/kaspersky.png', //Cover Image
    price: '299', //Actual Price
    logo: 'assets/kaspersky_logo.png', //Subscription Logo
  ),
  const SubscriptionList(
      title: 'Amazon Prime',
      discount: '17',
      displayImage: 'assets/primevideo.jpg',
      price: '149',
      logo: 'assets/primevideo_logo.jpg'),
  const SubscriptionList(
      title: 'Spotify',
      discount: '43',
      displayImage: 'assets/spotify.jpg',
      price: '49',
      logo: 'assets/spotify_logo.png'),
];

//List containing data of all public groups.
List<PublicGroups> publicGroups = <PublicGroups>[
  const PublicGroups(
      title: 'Kaspersky Anti-Virus',
      isMonth: true,
      price: '299',
      logo: 'assets/kaspersky_logo.png'),
  const PublicGroups(
      title: 'Amazon Prime',
      isMonth: true,
      price: '49',
      logo: 'assets/primevideo_logo.jpg'),
];
