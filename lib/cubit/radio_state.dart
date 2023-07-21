class RadioCubitState {
  final int selectedValue;

  const RadioCubitState(this.selectedValue);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RadioCubitState &&
          runtimeType == other.runtimeType &&
          selectedValue == other.selectedValue;

  @override
  int get hashCode => selectedValue.hashCode;
}
