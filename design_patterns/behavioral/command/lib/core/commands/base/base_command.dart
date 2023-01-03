abstract class BaseCommand {
  String getFigureColorName();
  String getLabel();
  void execute();
  void undo();
}
