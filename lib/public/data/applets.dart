import 'package:flutter/material.dart';
import 'package:talent_acquisition_exploer/models/applet.dart';

final List<Applet> authorizationApplets = [
  Applet(
    text: 'Site',
    image: 'assets/images/earth-globe.svg',
    uri: 'applet/SiteApplet',
  ),
  Applet(
    text: 'Role',
    image: 'assets/images/earth-globe.svg',
    uri: 'applet/RoleApplet',
    icon: Icons.person,
  ),
  Applet(
    text: 'Account',
    image: 'assets/images/teamwork.svg',
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
    image: 'assets/images/survey.svg',
    uri: 'applet/EvaluationFormApplet',
  ),
  Applet(
    text: 'Job Category',
    image: 'assets/images/skills.svg',
    uri: 'applet/JobCategoryApplet',
  ),
  Applet(
    text: 'Resume Sources',
    image: 'assets/images/portfolio.svg',
    uri: 'applet/ResumeSourceApplet',
  ),
  Applet(
    text: 'Work Location',
    image: 'assets/images/work.svg',
    uri: 'applet/WorkLocationApplet',
  ),
  Applet(
    text: 'Alias',
    image: 'assets/images/connector.svg',
    uri: 'applet/AliasApplet',
  ),
  Applet(
    text: 'Auto Match',
    image: 'assets/images/transfer.svg',
    uri: 'applet/AutoMatchApplet',
  ),
  Applet(
    text: 'Meeting Room',
    image: 'assets/images/meeting-room.svg',
    uri: 'applet/MeetingRoomApplet',
  ),
  Applet(
    text: 'Code Data',
    image: 'assets/images/subject.svg',
    uri: 'applet/CodeDataApplet',
  ),
  Applet(
    text: 'Mail Management',
    icon: Icons.contact_mail,
    image: 'assets/images/connector.svg',
    uri: 'applet/MailManagementApplet',
  ),
  Applet(
    text: 'Education',
    image: 'assets/images/student.svg',
    uri: 'applet/EducationApplet',
  ),
];

final List<Applet> recruiterApplets = [
  Applet(
    text: 'Interview Arrangements',
    image: 'assets/images/earth-globe.svg',
    uri: 'applet/InterviewArrangementsApplet',
  ),
  Applet(
    text: 'Interview List',
    image: 'assets/images/earth-globe.svg',
    uri: 'applet/InterviewListApplet',
  ),
];
