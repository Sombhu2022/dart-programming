class SecretBox {
  String _secret = "";

  // Write-only setter
  set secret(String value) {
    _secret = value;
    print("Secret has been updated!");
  }
}

void main() {
  var box = SecretBox();
  box.secret = "Top Secret!"; // Write-only access
  print(box._secret);
}
