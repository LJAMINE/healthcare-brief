class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}

List<CustomIcon> customIcons = [
  CustomIcon(name: "Appointment", icon: 'lib/images/appointment.png'),
  CustomIcon(name: "Hospital", icon: 'lib/images/hospital.png'),
  CustomIcon(name: "Covid-19", icon: 'lib/images/virus.png'),
  CustomIcon(name: "More", icon: 'lib/images/more.png'),
];
List<CustomIcon> healthNeeds = [
  CustomIcon(name: "Appointment", icon: 'lib/images/appointment.png'),
  CustomIcon(name: "Hospital", icon: 'lib/images/hospital.png'),
  CustomIcon(name: "Covid-19", icon: 'lib/images/virus.png'),
  CustomIcon(name: "Pharmacy", icon: 'lib/images/drug.png'),
];
List<CustomIcon> specialisedCared = [
  CustomIcon(name: "Diabetes", icon: 'lib/images/blood.png'),
  CustomIcon(name: "Health Care", icon: 'lib/images/health_care.png'),
  CustomIcon(name: "Dental", icon: 'lib/images/tooth.png'),
  CustomIcon(name: "Insured", icon: 'lib/images/insurance.png'),
];
