domains
nama=string

facts
nondeterm daftarperaturan(nama)
nondeterm tulis(nama)

clauses
daftarperaturan(" 1.Program hanya membaca tipe data integer (bilangan bulat)").
daftarperaturan("\n 2.Perahu hanya memuat maksimal dua penumpang ").
daftarperaturan("\n 3.Serigala tidak boleh ditinggal bersama domba").
daftarperaturan("\n 4.Domba tidak boleh ditinggal bersama sayuran").
daftarperaturan("\n 5.Perahu hanya boleh berangkat dan kembali bersama petani").

tulis("\nAda seorang petani yang membawa seekor kambing, ").
tulis("\nseekor serigala, dan sekeranjang sayur. Mereka ").
tulis("\nberada di tepi sebuah pulau dan ingin").
tulis("\nmenyebrang ke pulau seberang.  Di tepi pulau itu").
tulis("\nhanya ada sebuah perahu yang cukup untuk dua ").
tulis("\npenumpang. Dengan catatan lain, bahwa kambing").
tulis("\ntidak boleh ditinggal berdua dengan serigala ").
tulis("\ntanpa adanya pemuda karena serigala akan ").
tulis("\nmemakan kambing, kemudian kambing tidak boleh").
tulis("\nditinggal bersama sayur, karena kambing akan").
tulis("\nmemakan sayurnya. Kemudian, yang bisa ").
tulis("\nmenggunakan perahu hanyalah petani. Bagaimana").
tulis("\ncaranya agar mereka semua bisa menyebrang ke ").
tulis("\npulau seberang dengan utuh?").
tulis("\n\n==========================================\n     Disusun oleh :\n==========================================\n\t").

goal
save("db.simpan").