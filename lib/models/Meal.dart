class Meal{
  final String id;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final List<String> categories;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  get complexityText{
    switch(complexity){
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  get affordabilityText{
    switch(affordability){
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'Unknown';
    }
  }

const  Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
    required this.categories,
    required this.duration,
    required this.complexity,
    required this.affordability,
  });
}

enum Complexity{
  Simple,
  Challenging,
  Hard,
}

enum Affordability{
  Affordable,
  Pricey,
  Luxurious,
}
