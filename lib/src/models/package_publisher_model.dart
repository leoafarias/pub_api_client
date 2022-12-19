/// Package Publisher Model

class PackagePublisher {
  final String? publisherId;
  const PackagePublisher({
    this.publisherId,
  });

  Map<String, dynamic> toMap() => {
        'publisherId': publisherId,
      };

  factory PackagePublisher.fromMap(Map<String, dynamic> map) =>
      PackagePublisher(
        publisherId: map['publisherId'] as String?,
      );
}
