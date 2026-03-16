class Mahasiswa {
  String? nama;
  String? jurusan;

  Mahasiswa(this.nama, this.jurusan);

  Mahasiswa.dariMap(Map<String, String> data) {
    nama = data['nama'];
    jurusan = data['jurusan'];
  }

  Mahasiswa.tanpaNama(this.jurusan) {
    nama = "TanpaNama";
  }

  void tampilkan() {
    print("Nama: $nama, Jurusan: $jurusan");
  }
}

void main() {
  var mhs1 = Mahasiswa("Faruq", "Sistem Informasi");

  var dataInput = {"nama": "Faruq", "jurusan": "Sistem Informasi"};
  var mhs2 = Mahasiswa.dariMap(dataInput);

  var mhs3 = Mahasiswa.tanpaNama("Sistem Informasi");

  mhs1.tampilkan();
  mhs2.tampilkan();
  mhs3.tampilkan();
}
