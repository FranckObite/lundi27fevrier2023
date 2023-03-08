import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final String Description;
  final String numeroTache;

  final bool taskCompletd;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompletd,
      required this.onChanged,
      required this.deleteFunction,
      required this.Description,
      required this.numeroTache});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            //ma fonction suppression est ici
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        startActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            //ma fonction suppression est ici
            onPressed: deleteFunction,
            icon: Icons.edit,
            backgroundColor: Colors.green,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Text(
                  numeroTache,
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 1, 18, 49),
                  ),
                ),
              ),
              title: Text(
                taskName,
                //utilisation de la methode ternaire
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: taskCompletd
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
              subtitle: Text(
                Description,
                style: TextStyle(color: Colors.white),
              ),
              //revenir dessus après
              trailing: Checkbox(
                value: taskCompletd,
                onChanged: onChanged,
                activeColor: Color.fromARGB(255, 1, 18, 49),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
