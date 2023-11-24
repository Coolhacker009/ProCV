import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:pro_cv/pages/data.dart';
import 'package:pro_cv/utils/constants.dart';

class MyResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
              child: FractionallySizedBox(
            widthFactor: 0.9,
            child: SingleChildScrollView(
              child: FlutterResumeTemplate(
                data: data,
                templateTheme: TemplateTheme.modern,
                mode: TemplateMode.onlyEditableMode,
                onSaveResume: (globalKey) async =>
                    await PdfHandler().createResume(globalKey),
              ),
            ),
          ));
        },
      ),
    );
  }
}
