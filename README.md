# LOXEROS
Kütüphane içinde yazan Script/program hobi amaçlı orta okul dönemimde video ve forumlar'ı kullanarak geliştirdim.
|Proje | Detay|
|---|---|
|Minimal Command Hotspot|`Netsh` kullanarak sanal ağ oluşturmak için tasarlandı.|
|Qalel|Bilgisayarın metin dosyası üzerinde çalışacak şekilde tasarlandı.|
|Comlocker|`attrib` ve windows üzerineki bazı özel parametreleri kullanarak oluşturulan gizileme 2016-2017 yıllarında sıklıkla kullanılan bir script'in geliştirilmiş halidir. Diğer scriptten ayıran şifreleme için yazdığım kısmın klasörün içinde saklanmış olmasından kaynaklanmaktadır.|
|Auto Network Connector/Connector|Belirli aralıklarla belirlenen siteye ping atılıp sonuç gelmemesi halinde ağ bağlantısını kesip tekrar bağnacak şekilde tasarladım ancak bunu sadece paketler arası çakışmaya sebep olan bir cihazınız varsa işe yarar. Modem yapılandırmanızı kontrol edebilir ya da yeni bir cihaz olmayı deneyin.|
|Connect_File_Downloader|Adobe connect üzerinde yapılan kayıtlı canlı yayımları indirmenizi kolaylaştırı. input kısmına wideo url'sini girin. url'yi chrom kullanarak açıyor, çalışması için chrome'u kurun.|
|Ticket|`netsh` kullanarak kayıtlı olan ağın başka bir bilgisayara usb gibi bir yolla aktaması için tasarladım.|
|Mors|Koşullar kullanarak mors harflerini decode etmesi için tasarlamıştım.|

## Minimal Command Hotspot | Yapılandırma
  * ``ncpa.cpl``'i çalıştırın.
  * Paylaşım için kullanacağınız bağdaştırıcının özellikler kısmından paylaşım bölümüne girin.
  * _'Diğer ağ kullanıcıların bu bilgisayarın internet bağlantısı yoluyla bağlan'_ ile bağdaştırıcının ağ paylaşımını etkinleştir.
  * Alt kısımdan sanal ağ için açılan bağdaştırıcıyı seçip kaydedin.
## Qalel | Açıklama
Bu yazılım, bir ağ veya FTP sunucusu üzerinden mesajlaşma hattı kurmayı amaçlar. Kuruluma gerek yoktur, bilgileri girip bağlanarak çalışır. 

**Gerekli Bilgiler:**
- **Sunucu:** Sunucunun IP adresi ve yolunu girin. Örnek: `192.168.1.1/edc.rfv`
- **Sunucu Adı:** Varsa sunucunun kullanıcı adını girin. Örnek: `admin`
- **Sunucu Parolası:** Varsa sunucu parolasını girin. Örnek: `admin`
- **Kullanıcı Adı:** Mesajlaşmada gözükecek ad. Örnek: `Deneme`

**Not:**
IP adresini girdikten sonra, verilerin kaydedilmesi için FTP sunucusunda bir dosya oluşturmalısınız. Örnek: `ftp://192.168.1.1/Qalel/Veri.txt`.

**Örnek Doldurma:**
```
Sunucu         : 192.168.1.1/edc.rfv
Sunucu Adı     : admin
Sunucu Parolası: admin
Kullanıcı Adı  : Deneme
```

**Bağlantı Sorunları İçin:**
1. Modem kullanıyorsanız port ayarlarını kontrol edin. Örnek: `192.168.1.1:21/edc.rfv`
2. Sunucu bağlantısını kontrol edin.
3. IP adresi veya URL'nin doğru olduğundan emin olun.
4. Sunucu adı ve parolasını kontrol edin.

## Comlocker | Açıklama
Bu projede amaç, bir klasör oluşturup o klasörü parola veya isteğe bağlı olarak USB ve parolayla açabilmektir. Yazılım Windows terminalinde çalışır ancak bazı Windows sürümlerinde yapılandırmanızdan ötürü hatalı çalışabilir.

**Temel İşleyiş:**
- Yazılım çalıştırıldığında, "USB koruma eklemek ister misiniz?" sorusu gelir. Bu aşamada "k" tuşuna basarak koruma eklenebilir veya kapatılabilir. Eğer yazılım tekrar başlatılırsa bu seçenek bir daha gösterilmez.

**Görünmeyen diğer komutlar:**
- **OS8CHW3JSAODK:** Yeni bir kullanıcı ekler. Mevcut hesap silinmez, yanında yeni bir hesap oluşturulur.
- **NPQ023IDAJDZL:** USB korumalı klasörlerde korumayı kaldırır.
- **PAKX29SJAP23I:** Geliştiricilere yönelik bir komuttur. Klasörlere ve dosyalara yönlendirilip inceleme yapabilirsiniz.
- **KN32CXJ49SIAE:** Kayıtlı parolaları siler, ancak veriler silinmez. Klasör kilitliyse parola silinmez, ancak klasör açıksa bu kod işe yarar.
- **AIE93IDHA93J9:** Parola değiştirme işlemini gerçekleştirir.
- **info:** Kod kaynakları hakkında bilgi verir.

**Ana Menü Görünümü:**
```
______________________________
             MENU
______________________________

1- KiLiTLE

2- CIKIS
______________________________
Numara  :
```

**Önemli Notlar:**
- Yazılım sadece Türkçe dilde tasarlandı. Terminal üzerinde bazı karakterlerin desteği olmadığından, benzer karakterler kullanıldı.
- Şifre kurtarma seçeneği yok ancak dosylara ilgili değişiklikleri yapmanız durumunda erişmeniz mümkündür. Bu yüzden kolay hatırlanacak ve sadece rakamlardan oluşan şifreler kullanmanızı öneririm.
