class Barang {
  final int id;
  final String nama;
  final int harga;

  Barang({required this.id, required this.nama, required this.harga});

  factory Barang.fromJson(Map<String, dynamic> json) {
    return Barang(id: json['id'], nama: json['nama'], harga: json['harga']);
  }
}
