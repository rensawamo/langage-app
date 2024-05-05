/// JSON解析用のabstractクラス
/// Entityクラスに継承して利用する
abstract class JsonSerializableInterface {
  Map<String, dynamic> toJson();
}
