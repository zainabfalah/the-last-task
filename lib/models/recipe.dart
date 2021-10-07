class Recipe {
  final String name;
  final String imageUrl;
  final int servings;

  Recipe(this.name, this.servings, this.imageUrl);

  static List<Recipe> items = [
    Recipe('dolma', 4, 'assets/images/1.jpg'),
    Recipe('beriane', 1, 'assets/images/2.jpg'),
    Recipe('maskof', 2, 'assets/images/1.jpg'),
  ];
}
