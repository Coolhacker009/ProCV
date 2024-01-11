import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lecle_downloads_path_provider/lecle_downloads_path_provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_to_pdf/flutter_to_pdf.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/pages/data.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:provider/provider.dart';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart ' as pw;
import 'package:screenshot/screenshot.dart';

class MyResumePage extends StatefulWidget {
  const MyResumePage({super.key, required this.cvmode});
  final TemplateTheme cvmode;
  @override
  State<MyResumePage> createState() => _MyResumPageState();
}

class _MyResumPageState extends State<MyResumePage> {
  final ExportDelegate exportDelegate = ExportDelegate();
  String workExperienceCompany1 = '''
Responsibilities:
  - Developed and maintained RESTful APIs using Node.js and Express.js for our web applications.
  - Collaborated with the frontend team to integrate GraphQL APIs into our applications.
  - Utilized Docker for containerization and Kubernetes for orchestration of microservices.
  - Implemented user authentication and authorization using JWT tokens and OAuth2.

  Technologies Used:
  - Node.js, Express.js, GraphQL, RESTful APIs
  - Docker, Kubernetes, JWT, OAuth2
  - PostgreSQL, MongoDB
  - Git, JIRA

  Achievements:
  - Successfully reduced API response times by 30% by optimizing database queries.
  - Led a team of developers in delivering critical features on time.
''';

  String workExperienceCompany2 = '''
Responsibilities:
  - Developed scalable microservices using Java and Spring Boot for our cloud-based applications.
  - Integrated Elasticsearch and Kibana for real-time log monitoring and analysis.
  - Implemented message queuing systems using Apache Kafka for event-driven architecture.
  - Collaborated with the QA team to ensure high code quality and performance.

  Technologies Used:
  - Java, Spring Boot, RESTful APIs
  - Elasticsearch, Kibana, Apache Kafka
  - AWS (Amazon Web Services)
  - Git, Jenkins

  Achievements:
  - Improved application performance by optimizing database queries and reducing response times.
  - Implemented automated deployment pipelines, resulting in a 50% reduction in release time.
''';

  String workExperienceCompany3 = '''
Responsibilities:
  - Designed and developed responsive web applications using React.js and Redux.
  - Implemented serverless architecture using AWS Lambda and API Gateway for cost-effective solutions.
  - Integrated third-party APIs and payment gateways for e-commerce applications.
  - Conducted code reviews and mentored junior developers in best practices.

  Technologies Used:
  - React.js, Redux, GraphQL
  - AWS Lambda, API Gateway
  - MySQL, MongoDB
  - Git, Bitbucket

  Achievements:
  - Successfully launched three web applications, increasing customer engagement by 25%.
  - Implemented a GraphQL API, reducing the number of network requests and improving frontend performance.
''';

  ScreenshotController screenshotController = ScreenshotController();

  Future<void> saveFile(document, String name) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final File file = File('${dir.path}/$name.pdf');

    await file.writeAsBytes(await document.save());
    debugPrint('Saved exported PDF at: ${file.path}');
  }

  Future getPdf(Uint8List screenShot) async {
    final image = pw.MemoryImage(screenShot);
    pw.Document pdf = pw.Document();
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Center(
        child: pw.Image(image),
      ); // Center
    }));
    // final downloadsPath = await DownloadsPathProvider.downloadsDirectory;
    // print(downloadsPath!.path);
    final Directory dir = await getApplicationDocumentsDirectory();
    File pdfFile = File('/sdcard/Download/moncv.pdf');

    print('${dir.path}/moncv.pdf');

    await pdfFile.writeAsBytes(await pdf.save()).then((value) => {
          showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                    child: Text(
                      "Fichier exporté avec succes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Mon Cv',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          backgroundColor: myPurple,
        ),
        bottomSheet: FloatingActionButton(
          onPressed: () async {
            // final ExportOptions overrideOptions = ExportOptions(
            //   textFieldOptions: TextFieldOptions.uniform(
            //     interactive: false,
            //   ),
            //   checkboxOptions: CheckboxOptions.uniform(
            //     interactive: false,
            //   ),
            // );
            try {
              screenshotController.capture().then((Uint8List? image) {
                //Capture Done
                print("-----------------------------");
                getPdf(image!);
                print("wwwwwwwwwwwwwwwwwwwwwwwwwwwww");
              }).catchError((onError) {
                print(onError);
              });
              // print("------------------------------------");
              // // await PdfHandler().createResume(_formKey);
              // print("------------------------------------1");
              // final ExportOptions options = ExportOptions(
              //   pageFormatOptions: PageFormatOptions.a4(),
              //   textFieldOptions: TextFieldOptions.uniform(
              //     interactive: false,
              //   ),
              //   checkboxOptions: CheckboxOptions.uniform(
              //     interactive: false,
              //   ),
              // );
              // final pdf = await exportDelegate.exportToPdfDocument('demo',
              //     overrideOptions: options);
              // saveFile(pdf, 'static-example');
              // print("uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu");
              // await saveFile(pdf, 'mon_CV');
            } catch (e) {
              print(e);
            }
          },
          child: Icon(Icons.download),
        ),
        body: Screenshot(
            controller: screenshotController,
            child: FlutterResumeTemplate(
              data: TemplateData(
                  fullName: Provider.of<DataService>(context, listen: false)
                      .infoProfil
                      .nom!,
                  currentPosition:
                      Provider.of<DataService>(context, listen: false)
                          .infoProfil
                          .profession!,
                  address: Provider.of<DataService>(context, listen: false)
                      .infoProfil
                      .adresse!,
                  phoneNumber: Provider.of<DataService>(context, listen: false)
                      .infoProfil
                      .tel!,
                  email: Provider.of<DataService>(context, listen: false)
                      .infoProfil
                      .email!,
                  bio: Provider.of<DataService>(context, listen: false)
                      .infoProfil
                      .presentation!,
                  experience: Provider.of<DataService>(context, listen: false)
                      .expreiences
                      .map((e) => e.experienceData!)
                      .toList(),
                  educationDetails:
                      Provider.of<DataService>(context, listen: false)
                          .educations
                          .map((e) => e.education!)
                          .toList(),
                  languages: Provider.of<DataService>(context, listen: false)
                      .languages
                      .map((e) => e.language!)
                      .toList(),
                  hobbies: [
                    'Bungee jumping',
                    'Fitness Studio',
                    'Martial Art',
                    'Vintage Art Collection'
                  ],
                  image:
                      'https://images.pexels.com/photos/3768911/pexels-photo-3768911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  backgroundImage:
                      'https://images.pexels.com/photos/3768911/pexels-photo-3768911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              templateTheme: widget.cvmode,
              mode: TemplateMode.onlyEditableMode,
              telPlaceHolder: 'Téléphone',
              emailPlaceHolder: 'Adresse email',
              aboutMePlaceholder: 'Profile',
              languagePlaceHolder: 'Langues',
              experiencePlaceHolder: 'Expériences',
              educationPlaceHolder: 'Formation',
              hobbiesPlaceholder: 'Loisirs',
              maxLinesExperience: 2,
              onSaveResume: (globalKey) async =>
                  await PdfHandler().createResume(globalKey),
            )));
  }
}

// class MyResumePage extends StatelessWidget {
  
// }
