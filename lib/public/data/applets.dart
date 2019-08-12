import 'package:flutter/material.dart';
import 'package:talent_acquisition_exploer/models/applet.dart';

final List<Applet> authorizationApplets = [
  Applet(
    text: 'Site',
    image: 'image/earth-globe.svg',
    uri: 'applet/SiteApplet',
  ),
  Applet(
    text: 'Role',
    image: 'image/earth-globe.svg',
    uri: 'applet/RoleApplet',
  ),
  Applet(
    text: 'Account',
    image: 'image/teamwork.svg',
    uri: 'applet/AccountApplet',
  ),
  // {
  //   "text": "Questionnaire",
  //   "image": "image/survey.svg",
  //   "uri": "applet/EvaluationFormApplet",
  //   "category": "Setting"
  // },
  // {
  //   "text": "Job Category",
  //   "image": "image/skills.svg",
  //   "uri": "applet/JobCategoryApplet",
  //   "category": "Setting"
  // },
  // {
  //   "text": "Resume Sources",
  //   "image": "image/portfolio.svg",
  //   "uri": "applet/ResumeSourceApplet",
  //   "category": "Setting"
  // },
  // {
  //   "text": "Work Location",
  //   "image": "image/work.svg",
  //   "uri": "applet/WorkLocationApplet",
  //   "category": "Setting"
  // },
  // {
  //   "text": "Interview Arrangements",
  //   "icon": "calendar",
  //   "uri": "applet/InterviewArrangementsApplet",
  //   "category": "Recruiter"
  // },
  // {
  //   "text": "Interview List",
  //   "icon": "th",
  //   "uri": "applet/InterviewListApplet",
  //   "category": "Recruiter"
  // },
];

final List<Applet> settingApplets = [
  Applet(
    text: 'Questionnaire',
    image: 'image/survey.svg',
    uri: 'image/survey.svg',
  ),
  Applet(
    text: 'Job Category',
    image: 'image/skills.svg',
    uri: 'applet/JobCategoryApplet',
  ),
  Applet(
    text: 'Resume Sources',
    image: 'image/portfolio.svg',
    uri: 'applet/ResumeSourceApplet',
  ),
  Applet(
    text: 'Work Location',
    image: 'image/work.svg',
    uri: 'applet/WorkLocationApplet',
  ),
];

final List<Applet> recruiterApplets = [
  Applet(
    text: 'Interview Arrangements',
    image: 'image/work.svg',
    uri: 'applet/InterviewArrangementsApplet',
  ),
  Applet(
    text: 'Interview List',
    image: 'image/work.svg',
    uri: 'applet/InterviewListApplet',
  ),
];