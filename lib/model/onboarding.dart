class OnboardingItem {
//this is to declare the variables
  final String title;

  final String image;

//class constructor
  const OnboardingItem({required this.title, required this.image});
}

class OboardingItems {
  //put all onboarding data model in a list
  static List<OnboardingItem> loadItems() {
    //this is an object of all the items
    const obj = <OnboardingItem>[
      OnboardingItem(
          title: "Farm place for your needs",
          image: "assets/images/images/cows.jpg"),
     OnboardingItem(
         title: "Purchase and sell your livestocks",
          image: "assets/images/images/goats.jpg"),
      OnboardingItem(
           title: "Get vetinary support for your livestocks",
          image: "assets/images/images/vet.jpg"),
       OnboardingItem(
           title: "Get quick and secure flexible loans that cover your livestock business",
          image: "assets/images/images/pig.jpg"),
     
     
    ];
    return obj;
  }
}
