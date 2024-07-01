class ListOfMap {
  List<Map<String, dynamic>> cards;
  List<Map<String, dynamic>> recharges;
  Map<String, dynamic> apiData;

  ListOfMap()
      : cards = [
          {
            'id': 1,
            'title': 'Add',
            'description': 'Money',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 2,
            'title': 'Send',
            'description': 'Money',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 3,
            'title': 'Request',
            'description': 'Money',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 4,
            'title': 'Withdraw',
            'description': 'Money',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 5,
            'title': 'Pay',
            'description': 'Friends',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 6,
            'title': 'Pay Using',
            'description': 'QR Code',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 7,
            'title': 'Split',
            'description': 'Bills',
            'image': 'assets/images/pay.png',
          },
          {
            'id': 8,
            'title': 'Request',
            'description': 'e_Statement',
            'image': 'assets/images/pay.png',
          },
        ],
        recharges = [
          {
            'id': 1,
            'title': 'Mobile',
            'description': 'Recharge',
            'image': 'assets/images/recharge.png',
          },
          {
            'id': 2,
            'title': 'Mobile',
            'description': 'Recharge',
            'image': 'assets/images/recharge.png',
          },
          {
            'id': 3,
            'title': 'Mobile',
            'description': 'Recharge',
            'image': 'assets/images/recharge.png',
          },
          {
            'id': 4,
            'title': 'Mobile',
            'description': 'Recharge',
            'image': 'assets/images/recharge.png',
          },
        ],
        apiData = {};

  void initializeApiData() {
    apiData = {
      'cards': cards,
      'recharges': recharges,
    };
  }
}
