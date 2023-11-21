class Customer {
  Customer({required this.name, required this.isBlock});

  final String name;
  final bool isBlock;

  // Convert Customer object to a map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isBlock': isBlock,
    };
  }

  // Create a Customer object from a map
  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      name: map['name'],
      isBlock: map['isBlock'],
    );
  }
}
