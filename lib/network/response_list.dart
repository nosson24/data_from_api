class ResponseList<T> {
  List<T> dataList;

  ResponseList(this.dataList);

  factory ResponseList.fromJson(List<dynamic> jsonList, Function fromJson) {
    final List<T> result = [];

    for (var data in jsonList) {
      result.add(fromJson(data));
    }

    return ResponseList(result);
  }
}
