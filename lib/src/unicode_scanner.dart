import "unicode_script.dart";
import "unicode_block.dart";

extension ScriptAnalysisCP on int {
  (String, String) scanScript() {
    Iterable<(String, String)> rc = UnicodeScript().scripts.map<(String, String)?>((Script s) => (s.start <= this && this <= s.end) ? (s.name, s.category) : null).whereType<(String, String)>();
    if(rc.isEmpty){
      return ("", "");
    }
    return rc.first;
  }
  String nameOfScript() => this.scanScript().$1;
  String categoryOfScript() => this.scanScript().$2;
  bool isInScript({String? name, String? category}) {
    Iterable<Script> sc = UnicodeScript().scripts.where((Script s) => (name == null ? true : name == s.name) && (category == null ? true : category == s.category));
    if(sc.isEmpty){
      return false;
    }
    return sc.first.start <= this && this <= sc.first.end;
  }
}
extension ScriptAnalysisString on String {
  Iterable<(String, String)> scanScript() => this.runes.map<(String, String)>((int i) => i.scanScript());
  Iterable<String> nameOfScript() => this.runes.map<String>((int i) => i.nameOfScript());
  Iterable<String> categoryOfScript() => this.runes.map<String>((int i) => i.categoryOfScript());
  Iterable<bool> isInScript({String? name, String? category}) => this.runes.map<bool>((int i) => i.isInScript(name: name, category: category));
}
extension BlockAnalysisCP on int{
  String scanBlock() {
    Iterable<String> rc = UnicodeBlock().blocks.map<String?>((Block b) => (b.start <= this && this <= b.end) ? b.name : null).whereType<String>();
    if(rc.isEmpty){
      return "";
    }
    return rc.first;
  }
  bool isInBlock({String? name}){
    Iterable<Block> bc = UnicodeBlock().blocks.where((Block b) => name == null ? true : name == b.name);
    if(bc.isEmpty){
      return false;
    }
    return bc.first.start <= this && this <= bc.first.end;
  }
}
extension BlockAnalysisString on String {
  Iterable<String> scanBlock() => this.runes.map<String>((int i) => i.scanBlock());
  Iterable<bool> isInBlock({String? name}) => this.r
}
