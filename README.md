# Kecebong-Hybrid
Kecebong-Hybrid adalah aplikasi full-stack berbasis arsitektur client-server untuk pengelolaan berita. Bagian frontend dibangun menggunakan Angular dan TypeScript, sedangkan backend menggunakan PHP native dengan database MySQL.
Aplikasi ini menyediakan fitur autentikasi pengguna, manajemen berita, kategori, komentar, favorit, rating, dan profil user.
## Fitur Utama
- Registrasi dan login pengguna
- Menampilkan daftar berita
- Menampilkan detail berita
- Menambahkan berita
- Menghapus berita
- Mencari berita
- Menambahkan dan menampilkan kategori
- Menambahkan, menampilkan, dan menghapus komentar
- Menambahkan dan menghapus berita favorit
- Memberikan rating pada berita
- Menampilkan profil pengguna
## Teknologi yang Digunakan
### Frontend
- Angular
- TypeScript
- HTML
- SCSS
- RxJS
### Backend
- PHP Native
- MySQL / MariaDB
### Tools
- Node.js
- npm
- Angular CLI
- XAMPP / Laragon
- Git
## Struktur Project
```text
Kecebong-Hybrid/
├── client/
│   ├── src/
│   │   ├── app/
│   │   │   ├── add-category/
│   │   │   ├── add-news/
│   │   │   ├── favorite/
│   │   │   ├── home/
│   │   │   ├── kategori/
│   │   │   ├── login/
│   │   │   ├── news-category/
│   │   │   ├── news-detail/
│   │   │   ├── profile/
│   │   │   ├── register/
│   │   │   ├── app-routing.module.ts
│   │   │   ├── app.module.ts
│   │   │   ├── app.component.html
│   │   │   ├── app.component.scss
│   │   │   ├── app.component.ts
│   │   │   ├── kecenewsservice.ts
│   │   │   └── kecenewsservice.spec.ts
│   │   ├── assets/
│   │   ├── environments/
│   │   ├── theme/
│   │   ├── global.scss
│   │   ├── index.html
│   │   ├── main.ts
│   │   ├── polyfills.ts
│   │   └── zone-flags.ts
│   ├── angular.json
│   ├── package.json
│   ├── tsconfig.json
│   └── .editorconfig
│
├── server/
│   ├── category_create.php
│   ├── category_list.php
│   ├── comment_create.php
│   ├── comment_delete.php
│   ├── comment_list.php
│   ├── conn.php
│   ├── favorite_add.php
│   ├── favorite_list.php
│   ├── favorite_remove.php
│   ├── login.php
│   ├── news_create.php
│   ├── news_delete.php
│   ├── news_detail.php
│   ├── news_list.php
│   ├── news_search.php
│   ├── rating_create.php
│   ├── register.php
│   └── user_profile.php
│
├── hmp_uas.sql
└── README.md
Arsitektur Sistem
Project ini menggunakan pola full-stack client-server:

[ Angular Frontend ]
        ↓
   HTTP/API Request
        ↓
[ PHP Backend Server ]
        ↓
    MySQL Database
Alur data aplikasi:

Angular Component
      ↓
Service (kecenewsservice.ts)
      ↓
HTTP Request
      ↓
PHP Backend
      ↓
MySQL Database
      ↓
JSON Response
      ↓
Angular UI Render
Penjelasan Client
Folder client/ adalah aplikasi frontend berbasis Angular yang berfungsi sebagai antarmuka pengguna untuk mengakses semua fitur backend.

Halaman Utama
home menampilkan daftar berita utama
news-detail menampilkan detail berita
news-category menampilkan berita berdasarkan kategori
add-news digunakan untuk menambahkan berita
add-category digunakan untuk menambahkan kategori
favorite menampilkan daftar favorit user
login dan register untuk autentikasi
profile menampilkan data profil pengguna
kategori menampilkan daftar kategori
Routing
Navigasi halaman diatur melalui file:

app-routing.module.ts
Contoh route yang digunakan:

/login
/register
/home
/news-detail/:id
/profile
/favorite
/news-category/:id
API Integration
Frontend terhubung ke backend melalui service:

kecenewsservice.ts
Service ini bertugas untuk:

mengirim request HTTP ke backend PHP
menerima response JSON
menghubungkan komponen frontend dengan API backend
Penjelasan Server
Folder server/ berisi backend berbasis PHP native yang menyediakan endpoint API untuk kebutuhan frontend.

Endpoint Autentikasi dan User
register.php untuk registrasi user
login.php untuk login user
user_profile.php untuk menampilkan profil user
Endpoint Kategori
category_create.php untuk menambahkan kategori
category_list.php untuk menampilkan daftar kategori
Endpoint Berita
news_create.php untuk menambahkan berita
news_list.php untuk menampilkan daftar berita
news_detail.php untuk menampilkan detail berita
news_delete.php untuk menghapus berita
news_search.php untuk mencari berita
Endpoint Komentar
comment_create.php untuk menambahkan komentar
comment_list.php untuk menampilkan daftar komentar
comment_delete.php untuk menghapus komentar
Endpoint Favorit
favorite_add.php untuk menambahkan berita ke favorit
favorite_list.php untuk menampilkan daftar favorit
favorite_remove.php untuk menghapus favorit
Endpoint Rating
rating_create.php untuk menambahkan rating berita
Koneksi Database
conn.php digunakan untuk menghubungkan backend dengan database MySQL
Database
Project ini menggunakan MySQL / MariaDB.

File database yang disediakan:

hmp_uas.sql
File tersebut digunakan untuk membuat struktur tabel dan data awal aplikasi.

Cara Menjalankan Project
1. Clone Repository
git clone https://github.com/imyourchel/Kecebong-Hybrid.git
cd Kecebong-Hybrid
2. Setup Database
Jalankan Apache dan MySQL melalui XAMPP atau Laragon.
Buka phpMyAdmin di browser:
http://localhost/phpmyadmin
Buat database baru, misalnya:
hmp_uas
Import file:
hmp_uas.sql
3. Setup Backend
Pindahkan folder server/ ke folder web server lokal.

Contoh:

XAMPP: C:\xampp\htdocs\Kecebong-Hybrid\server\
Laragon: C:\laragon\www\Kecebong-Hybrid\server\
Buka file server/conn.php lalu sesuaikan konfigurasi database:

<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "hmp_uas";
$conn = mysqli_connect($host, $user, $pass, $db);
?>
4. Setup Frontend
Masuk ke folder client:

cd client
Install dependency:

npm install
5. Konfigurasi Base URL API
Buka file berikut:

src/environments/environment.ts
atau src/app/kecenewsservice.ts
Lalu sesuaikan base URL API ke server lokal, misalnya:

export const environment = {
  production: false,
  apiUrl: 'http://localhost/Kecebong-Hybrid/server/'
};
atau:

apiUrl = 'http://localhost/Kecebong-Hybrid/server/';
6. Jalankan Frontend
ng serve
Lalu buka browser di:

http://localhost:4200
Contoh Request API
Menampilkan daftar berita
curl "http://localhost/Kecebong-Hybrid/server/news_list.php"
Menampilkan detail berita
curl "http://localhost/Kecebong-Hybrid/server/news_detail.php?id=1"
Menambahkan komentar
curl -X POST "http://localhost/Kecebong-Hybrid/server/comment_create.php" \
  -d "user_id=1&news_id=1&comment=Komentar saya"
Login user
curl -X POST "http://localhost/Kecebong-Hybrid/server/login.php" \
  -d "email=user@example.com&password=123456"
Catatan Pengembangan
Project ini sudah cocok untuk prototype atau tugas akademik. Untuk pengembangan lebih lanjut, beberapa peningkatan yang disarankan:

Menambahkan JWT Authentication
Menambahkan route guard pada frontend
Menggunakan HTTP interceptor
Menambahkan global error handling
Memisahkan environment development dan production
Menggunakan prepared statement pada query database
Menyimpan konfigurasi sensitif di file .env
Kontribusi
Jika ingin berkontribusi:

Fork repository ini
Buat branch baru
Lakukan perubahan
Commit perubahan
Push ke branch kamu
Buat pull request
Author
Dikembangkan oleh imyourchel
