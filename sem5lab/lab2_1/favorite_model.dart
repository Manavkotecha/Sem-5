//WAP to create list with favourite and unfavourite options using static list.

class FavouriteModel {
  static final List<Map<String, dynamic>> favouriteList = [
    {
      "name": "Apple",
      "description": "A sweet red fruit",
      "isFavourite": false,
    },
    {
      "name": "Banana",
      "description": "A long yellow fruit",
      "isFavourite": false,
    },
    {
      "name": "Cherry",
      "description": "A small red fruit",
      "isFavourite": false,
    },
    {
      "name": "Date",
      "description": "A sweet brown fruit",
      "isFavourite": false,
    },
  ];

  void toggleFavourite(int index) {
    favouriteList[index]['isFavourite'] = !favouriteList[index]['isFavourite'];
  }
}