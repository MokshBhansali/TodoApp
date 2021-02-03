import 'package:flutter/material.dart';
import 'package:todoapp/global/colors.dart';
import '../models/notes.dart';
import '../widgets/commonWidgets.dart';
import '../global/app.dart';
import 'notesDetail.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var titleController = TextEditingController();
  var detailController = TextEditingController();
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text(AppString.HomeTxt)),
        body: ListView(
          children: [
            textFormField(hint: AppString.TitleTxt, controller: titleController),
            textFormField(
                hint: AppString.DetailText, controller: detailController),
            Center(
              child: raisedButton(
                  onTapped: () => getVAlidation(), label: AppString.SubmitTxt),
            ),
          ],
        ),
      ),
    );
  }

  getVAlidation() {
    if (titleController.text.length > 0 &&
        detailController.text.length > 0 &&
        _formKey.currentState.validate()) {
      todos.add(Notes(detail: detailController.text, title: titleController.text));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NotesDetail()));
    } else {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(AppString.ErrorTxt),
        backgroundColor: ColorPlate.RedColor,
      ));
    }
  }
}
