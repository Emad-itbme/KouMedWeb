![Screenshot 2025-05-18 201432](https://github.com/user-attachments/assets/98b35b5d-04e2-45e6-9194-2fe2c9b51af3)KouMed - Tıbbi Malzeme E-Ticaret Platformu
KouMed, tıbbi malzeme ve ekipmanların çevrimiçi satışını sağlayan, Laravel tabanlı bir e-ticaret projesidir. Proje, Kocaeli Üniversitesi Veritabanı Yönetim Sistemleri dersi kapsamında geliştirilmiştir.
Proje Özeti
KouMed, sağlık profesyonelleri ve kurumların tıbbi malzeme ihtiyaçlarını karşılamak üzere tasarlanmış bir e-ticaret platformudur. Sistem, kullanıcı dostu arayüzü ile ürün arama, filtreleme, satın alma ve iade işlemlerini kolaylaştırmaktadır.
Kullanılan Teknolojiler

Backend: PHP 8.2, Laravel 11
Frontend: HTML, CSS, JavaScript
Veritabanı: MySQL 5.7
Paket Yönetimi: Composer, NPM
Ödeme Entegrasyonu: Iyzico
Diğer: Redis, Laravel Sanctum, Laravel Octane

Geliştirme Ortamı Gereksinimleri

PHP >= 8.2
MySQL >= 5.7
Composer
Node.js ve NPM

Kurulum Adımları

Projeyi klonlayın:
git clone https://github.com/Emad-itbme/KouMedWeb
cd KouMed

Bağımlılıkları yükleyin:
composer install
npm install
php artisan key:generate
php artisan view:clear
php artisan config:clear
php artisan cache:clear
php artisan route:clear
composer dump-autoload
php artisan storage:link
php artisan exchange-rate:update
php artisan optimize
php artisan vendor:publish

.env.example dosyasını .env olarak kopyalayın ve gerekli ayarları yapın:
cp .env.example .env
php artisan key:generate

Veritabanını oluşturun:
php artisan migrate
php artisan db:seed

Uygulamayı başlatın:
php artisan serve
npm run dev


Yazılım Mimarisi
KouMed projesi, modüler bir mimari yapıya sahiptir ve aşağıdaki katmanlardan oluşmaktadır:

Presentation Layer (Sunum Katmanı):

Views: Blade template engine ile oluşturulmuş kullanıcı arayüzleri
Controllers: HTTP isteklerini yöneten ve işleyen sınıflar


Application Layer (Uygulama Katmanı):

Services: İş mantığını içeren servis sınıfları
Requests: Form validation ve request işlemleri
Providers: Servis sağlayıcıları


Domain Layer (Domain Katmanı):

Models: Veritabanı tablolarını temsil eden Eloquent model sınıfları
Repositories: Veri erişim katmanı


Infrastructure Layer (Altyapı Katmanı):

Database: Migrations, seeders ve factories
Config: Uygulama konfigürasyonları



Proje, Bagisto e-ticaret framework'ü üzerine inşa edilmiş olup, paket tabanlı bir yapıya sahiptir. Her bir işlevsellik (ürün yönetimi, sipariş işleme, kullanıcı yönetimi vb.) kendi paketi içerisinde modüler olarak geliştirilmiştir.
Veritabanı Yapısı
Proje, ilişkisel bir veritabanı yapısına sahiptir ve başlıca tablolar şunlardır:

users: Kullanıcı bilgileri
products: Ürün bilgileri
categories: Kategori bilgileri
orders: Sipariş bilgileri
order_items: Sipariş kalemleri
rma: İade talepleri
visits: Ziyaretçi istatistikleri

Özellikler

Kullanıcı kayıt ve giriş sistemi
Ürün arama ve filtreleme
Alışveriş sepeti yönetimi
Ödeme işlemleri (Iyzico entegrasyonu)
Sipariş takibi
Ürün iade yönetimi (RMA)
Çoklu dil desteği
Responsive tasarım

Ekran Görüntüleri
![Screenshot 2025-05-18 201432](https://github.com/user-attachments/assets/6f614ed7-a607-431b-8f06-085d1aa9ec08)
![Screenshot 2025-05-18 201453](https://github.com/user-attachments/assets/d80e0db3-b079-4c19-a934-ec74d6ef0932)
![Screenshot 2025-05-18 201513](https://github.com/user-attachments/assets/c704e7e3-cfe4-4a08-80ae-f778e2677cdc)
![Screenshot 2025-05-18 201621](https://github.com/user-attachments/assets/131a0bde-9929-44dc-a75d-1829fa66c946)
![Screenshot 2025-05-18 201633](https://github.com/user-attachments/assets/db60a9dc-e614-4446-b18f-e60940ddf13f)
![Screenshot 2025-05-18 201651](https://github.com/user-attachments/assets/0f006aa8-c14f-4c10-9db1-2ef66519e127)
![Screenshot 2025-05-18 201713](https://github.com/user-attachments/assets/2f4af274-7a65-4e55-a563-86ea9211b5e4)


Lisans
Bu proje MIT lisansı altında lisanslanmıştır.
