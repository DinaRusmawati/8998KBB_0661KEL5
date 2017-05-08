domains

nomer=integer
ok = string*
nama=string

facts
nondeterm daftarperaturan(nama)
nondeterm tulis(nama)

predicates
nondeterm mulai(nomer)
nondeterm awal
nondeterm credit(ok)
nondeterm eror
nondeterm peraturan
nondeterm menugame
nondeterm pilih(nomer)
nondeterm pilih1(nomer)
nondeterm pilih2(nomer)
nondeterm pilih21(nomer)
nondeterm pilih3(nomer)
nondeterm pilih4(nomer)
nondeterm pilih5(nomer)
nondeterm pilih6(nomer)
nondeterm menu
nondeterm mulaiulang(nomer)
nondeterm tentang

clauses
menu:-  
	menugame.

menugame:-
	write("\n==========================================\nkota awal : petani , serigala ,domba , sayur\nkota akhir : -\n==========================================\n\n"),
	write("pilih daftar penumpang perahu menyebrang :\n\n\t1.petani domba\n\t2.petani serigala\n\t3.petani sayur\n\t4.petani\n\nmasukan pilihan : "),
	readint(A),pilih(A).
pilih(A):-
	A=1,write("\n==========================================\nkota awal : serigala , sayur \nkota akhir : petani , domba  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu kembali :\n\n\t1.petani domba \n\t2.petani \n\nmasukan pilihan : "),readint(B),pilih1(B);
	A=2,write("\n\n==========================================\nkota awal :  sayur, domba \nkota akhir : petani , serigala  \n==========================================\n\n sayur habis dimakan domba \n\n\t\t-GAME OVER-\n==========================================\n"),
	write("\n\n\n\tuntuk memulai lagi pilih 1 || untuk ke kemenu utama pilih 2\n masukan pilihan : "),readint(B),mulaiulang(B);
	A=3,write("\n\n==========================================\nkota awal : serigala , domba \nkota akhir : petani  , sayur \n==========================================\n\n domba dimakan serigala \n\n\t\t-GAME OVER-"),
	write("\n\n\n\tuntuk memulai lagi pilih 1 || untuk ke kemenu utama pilih 2\n masukan pilihan : "),readint(B),mulaiulang(B);
	A=4,write("\n\n==========================================\nkota awal : serigala , sayur , domba\nkota akhir : petani  \n==========================================\n\n domba dimakan serigala \n\n\t\t-GAME OVER-"),
	write("\n\n\n\tuntuk memulai lagi pilih 1 || untuk ke kemenu utama pilih 2\n masukan pilihan : "),readint(B),mulaiulang(B);
	A<>1,A<>2,A<>3,A<>4,write("\ninputan salah !!!!\n\n"),menugame.

pilih1(A):-
	A=1,menugame;
	A=2,write("\n==========================================\nkota awal : petani , serigala , sayur \nkota akhir : domba  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu menyebrang :\n\n\t1.petani serigala\n\t2.petani sayur\n\t3.petani\n\nmasukan pilihan : "),
	readint(B),pilih2(B);
	A<>1,A<>2,write("\ninputan salah !!!!\n\n"),pilih(1).

pilih2(A):-
	A=1,write("\n==========================================\nkota awal : sayur \nkota akhir : petani , serigala , domba  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu kembali :\n\n\t1.petani serigala\n\t2.petani domba\n\t3.petani\n\nmasukan pilihan : "),
	readint(B),pilih3(B);
	A=2,write("\n==========================================\nkota awal : serigala \nkota akhir : petani , sayur , domba  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu kembali :\n\n\t1.petani sayur\n\t2.petani domba\n\t3.petani\n\nmasukan pilihan : "),readint(B),pilih21(B);
	A=3,pilih(1);
	A<>1,A<>2,A<>3,write("\ninputan salah !!!!\n\n"),pilih1(2).
	
pilih21(A):-
	A=1,pilih1(2);
	A=2,write("\n==========================================\nkota awal : petani , serigala , domba \nkota akhir : sayur \n==========================================\n\n"),
	write("pilih daftar penumpang perahu kembali :\n\n\t1.petani serigala\n\t2.petani domba\n\t3.petani\n\nmasukan pilihan : "),pilih4(1);
	A=3,write("\n==========================================\nkota akhir :  sayur, domba \nkota awal : petani , serigala  \n==========================================\n\n sayur habis dimakan domba \n\n\t\t-GAME OVER-"),
	write("\n\n\n\tuntuk memulai lagi pilih 1 || untuk ke kemenu utama pilih 2\n masukan pilihan : "),readint(B),mulaiulang(B);
	A<>1,A<>2,A<>3,write("\ninputan salah !!!!\n\n"),pilih2(2)
	.

pilih3(A):-
	A=1,pilih1(2);
	A=2,write("\n==========================================\nkota awal : petani , domba , sayur \nkota akhir : serigala  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu menyebrang :\n\n\t1.petani sayur\n\t2.petani domba\n\t3.petani\n\nmasukan pilihan : "),
	readint(B),pilih4(B);
	A=3,write("\n==========================================\nkota awal : petani  , sayur \nkota akhir : serigala , domba \n==========================================\n\n domba dimakan serigala \n\n\t\t-GAME OVER-"),
	write("\n\n\n\tuntuk memulai lagi pilih 1 || untuk ke kemenu utama pilih 2\n masukan pilihan : "),readint(B),mulaiulang(B);
	A<>1,A<>2,A<>3,write("\ninputan salah !!!!\n\n"),pilih2(1).

pilih4(A):-
	A=1,write("\n==========================================\nkota awal :  domba \nkota akhir : petani , sayur , serigala  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu kembali :\n\n\t1.petani sayur\n\t2.petani serigala\n\t3.petani\n\nmasukan pilihan : "),readint(B),pilih5(B);
	A=2,pilih2(1);
	A=3,write("\n==========================================\nkota awal :  sayur, domba \nkota akhir : petani , serigala  \n==========================================\n\n sayur habis dimakan domba \n\n\t\t-GAME OVER-"),
	write("\n\n\n\tuntuk memulai lagi pilih 1 || untuk ke kemenu utama pilih 2\n masukan pilihan : "),readint(B),mulaiulang(B);
	A<>1,A<>2,A<>3,write("\ninputan salah !!!!\n\n"),pilih3(2).
pilih5(A):-
	A=1,pilih3(2);
	A=2,pilih21(2);
	A=3,write("\n==========================================\nkota awal :  petani , domba \nkota akhir : sayur , serigala  \n==========================================\n\n"),
	write("pilih daftar penumpang perahu berangkat :\n\n\t1.petani domba\n\t2.petani \n\nmasukan pilihan : "),readint(B),pilih6(B);
	A<>1,A<>2,A<>3,write("\ninputan salah !!!!\n\n"),pilih4(1).
	
pilih6(A):-
	A=1,write("\n==========================================\nkota awal :- \nkota akhir : petani , serigala ,domba , sayur\n==========================================\n\n\n\n\t---  YOU WIN  ---"),nl,nl;
	A=2,pilih4(1);
	A<>1,A<>2,write("\ninputan salah !!!!\n\n"),pilih5(3)
	.
	
mulaiulang(X):-
	X=1,menu;
	X=2,awal.

mulai(X):-
X=1,marktime(0,T1),
menu,marktime(0,T2),
difftime(T2,T1,Time)
,write("waktu anda menyelesaikan permainan adalah ",Time),nl,nl;
X=2,tentang,credit(["Novreza\t\t1515015089","\tWilly\t\t1515015069","\tDina R\t\t1515015071","\tAsyharul\t\t1515015078\n=========================================="]),awal;
X=3,peraturan,awal;
X=4,!;
X<>1,X<>2,X<>3,X<>4,eror.
eror:- write("inputan salah !!!!\n\n"),awal.
	
credit([]).
credit([H|T]):-
	write(H),nl,
	credit(T).
	
awal:- write("\n==========================================\nGame Srigala domba\n==========================================\n\n1.Mulai game\n\n2.Credit\n\n3.peraturan\n\n4.exit\n\nMasukan pilihan : "),readint(Pilih),mulai(Pilih).

tentang:-write("\n\n\n==========================================\n\t\tCREDIT\n==========================================\n"),nl,tulis(Y),
	 write(Y),fail.
tentang.

peraturan:- write("\n\n\n=====================================================\n\t\tPERATURAN\n=====================================================\n"),nl,daftarperaturan(Y),
	 write(Y,"\n----------------------------------------------------------------------------------------------------------"),nl,fail.
peraturan.

goal
consult("db.simpan"),
awal.