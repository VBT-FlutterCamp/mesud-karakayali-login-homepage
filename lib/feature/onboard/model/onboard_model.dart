class OnboardModel {
  final String image;
  final String title;
  final String description;

  OnboardModel(
      {required this.image, required this.title, required this.description});
}

List<OnboardModel> onboardModels = [
  OnboardModel(
      image: 'assets/images/1.png',
      title: 'Symsptoms of Covid-19',
      description:
          "COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness"),
  OnboardModel(
      image: 'assets/images/2.png',
      title: 'Covid-19 Information',
      description:
          "Most People who fall sick with COVID-19 will experience mild to moderate symptoms"),
  OnboardModel(
      image: 'assets/images/3.png',
      title: 'Just Stay at Home',
      description:
          "stay at home to self quarentine ourself from covid-19, hopefully everything gonna be fine soon"),
];
