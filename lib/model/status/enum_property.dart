abstract class EnumProperty<T>{

  String encodeStatus(T status);

  T decodeStatus(String value);

}