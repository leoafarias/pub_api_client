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

  @override
  String toString() => 'PackagePublisher(publisherId: $publisherId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackagePublisher && other.publisherId == publisherId;
  }

  @override
  int get hashCode => publisherId.hashCode;
}
