import "unicode_script.dart";
import "unicode_block.dart";

extension ScriptAnalysisCP on int {
  (String, String) scan() {
    Iterable<(String, String)> rc = UnicodeScript().scripts.map<(String, String)?>((Script s) => (s.start <= this && this <= s.end) ? (s.name, s.category)).whereType<(String, String)>();
    if(rc.isEmpty){
      return ("", "");
    }
    return rc.first;
  }
  String nameOfBlock() => this.scan().$1;
  String categoryOfBlock() => this.scan().$2;
  bool isInBlock({String name, String category}) {
    Iterable<Script> sc = UnicodeScript().scripts.where((Script b) => (name == null ? true : name == b.name) && (category == null ? true : category == b.category));
    if(sc.isEmpty){
      return false;
    }
    return sc.first.start <= this && this <= sc.first.end;
  }
}
extension ScriptAnalysisString on String {
  
}
extension BlockAnalysisCP on int
extension BlockAnalysisString on String {}
