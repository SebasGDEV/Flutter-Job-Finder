import 'package:get/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/model/popular_job_mode.dart';

class PopularJobController extends GetxController {
  final selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == popularJobsList.length - 1;
  var pageController =
      PageController(keepPage: true, initialPage: 0, viewportFraction: 0.8);

  nextPopularJobSelector() {
    if (isLastPage) {
    } else {
      pageController.nextPage(
          duration: 600.milliseconds, curve: Curves.fastOutSlowIn);
    }
  }
}

List<JobModel> normalJobList = [
  JobModel(
    id: 1,
    name: 'Normal Engineer',
    salary: '\$4000k per year',
    company: 'Duffenshmirtz Evil Co.',
    companyLogo:
        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    daysRemaining: 5,
  ),
  JobModel(
    id: 2,
    name: 'Puta profesional',
    salary: '\$180k per year',
    company: 'El Dragón Rojo GmbH Co.',
    companyLogo:
        'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=600',
    daysRemaining: 10,
  ),
  JobModel(
    id: 3,
    name: 'Mechatronics Engineer',
    salary: '\$130k per year',
    company: 'Duffenshmirtz Evil Co.',
    companyLogo:
        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=600',
    daysRemaining: 5,
  ),
  JobModel(
    id: 4,
    name: 'Mechatronics Engineer',
    salary: '\$130k per year',
    company: 'Duffenshmirtz Evil Co.',
    companyLogo:
        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    daysRemaining: 5,
  ),
];

List<JobModel> popularJobsList = [
  JobModel(
    id: 1,
    name: 'Mechatronics Engineer',
    salary: '\$130k per year',
    company: 'Duffenshmirtz Evil Co.',
    companyLogo:
        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    daysRemaining: 5,
  ),
  JobModel(
    id: 2,
    name: 'Puta profesional',
    salary: '\$180k per year',
    company: 'El Dragón Rojo GmbH Co.',
    companyLogo:
        'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=600',
    daysRemaining: 10,
  ),
  JobModel(
    id: 3,
    name: 'Mechatronics Engineer',
    salary: '\$130k per year',
    company: 'Duffenshmirtz Evil Co.',
    companyLogo:
        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=600',
    daysRemaining: 5,
  ),
  JobModel(
    id: 4,
    name: 'Mechatronics Engineer',
    salary: '\$130k per year',
    company: 'Duffenshmirtz Evil Co.',
    companyLogo:
        'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    daysRemaining: 5,
  ),
];
