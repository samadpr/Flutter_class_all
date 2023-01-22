class InvalidPonenumberException implements Exception {}

bool? validataPoneNumber(String phone) {
  if (phone.length == 10) {
    return true;
  } else {
    throw InvalidPonenumberException();
  }
}

void main(List<String> args) {
  // Entry poit
  try {
    final phoneValid = validataPoneNumber('234');
  } on InvalidPonenumberException catch (_) {
    print('Invalid Phone Number');
  } catch (e) {
    print(e);
  }
}
