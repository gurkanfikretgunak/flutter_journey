abstract class BaseCommand {
  String getLabel();
  void execute();
  void undo();
}
