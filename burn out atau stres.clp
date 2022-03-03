; Nama  : Rahmiyatul Hasanah YE
; NIM   : 20/460561/TK/51150
; Tugas : AI 1 - Expert System
(defrule intro
    =>
    (printout t crlf "Halo! Cek tingkat kelelahan kamu: lelah fisik, burn out, atau stress" crif)
    (assert (mentalhealth_check))
)

(defrule jam_tidur
    (mentalhealth_check)
    =>
    (printout t crlf "Berapa rata-rata jam tidur harian kamu dalam seminggu ini? (masukan berupa angka dalam satuan jam)" crif)
    (bind ?answer (read)
        (if (eq ?answer <=3 || ?answer >=12)
            then
                (assert(jam_tidur_burn_out))
            
            else
                (if (eq ?answer >=7 && ?answer <=9) 
                    then
                        (assert(jam_tidur_lelah_fisik))
                )

            else
                (assert (jam_tidur_stress))
        )
    )
)

(defrule durasi
    (mentalhealth_check)
    =>
    (printout t crlf "Sudah berapa lama kamu merasa tertekan dengan pekerjaan kamu? (masukan berupa angka dalam satuan bulan)" crif)
    (bind ?answer (read)
        (if (eq ?answer >=10)
            then
                (assert(durasi_burn_out))
            
            else
                (if (eq ?answer >=3 && ?answer <=9)
                    then
                        (assert(durasi_stress))
                )
            else
                (assert(durasi_lelah_fisik))
        )
    )
)

(defrule jam_kerja
    (mentalhealth_check)
    =>
    (printout t crlf "Berapa jam waktu kerja harian kamu? (masukan berupa angka dalam satuan jam)" crif)
    (bind ?answer (read)
        (if (eq ?answer >=10)
            then
                (assert(jam_kerja_burn_out))
            
            else
                (if (eq ?answer >=8 && ?answer <10)
                    then
                        (assert(jam_kerja_stress))
                )
            else
                (assert(jam_kerja_lelah_fisik))
        )
    )
)

(defrule problem_solving
    (mentalhealth_check)
    =>
    (printout t crlf "Apakah kamu merasa mampu memecahkan permasalahan yang kamu hadapi? (y/n)" crif)
    (bind ?answer (read)
        (if (eq ?answer y)
            then
                (assert(problem_solving_lelah_fisik))
                (assert(problem_solving_stress))
            
            else
                (assert(problem_solving_burn_out))
        )
    )
)

(defrule kenyamanan
    (mentalhealth_check)
    =>
    (printout t crlf "Apakah kamu merasa nyaman dengan lingkungan kamu? 
        a. nyaman
        b. tidak nyaman, namun tetap bersosialisasi
        c. tidak nyaman dan ingin mengasingkan diri" crif)
    (bind ?answer (read)
        (if (eq ?answer a)
            then
                (assert(kenyamanan_lelah_fisik))
            
            else 
                (if (eq ?answer b)
                    then 
                        (assert(kenyamanan_stress))
                )
            else
                (assert(kenyamanan_burn_out))
        )
    )
)

(defrule sosial
    (mentalhealth_check)
    =>
    (printout t crlf "Apakah kamu merasa menerima dukungan emosional dari lingkungan kamu? 
        a. ada dan mereka cukup suportif
        b. ada namun hanya dari teman dekat
        c. tidak ada" crif)
    (bind ?answer (read)
        (if (eq ?answer a)
            then
                (assert(sosial_lelah_fisik))
            
            else 
                (if (eq ?answer b)
                    then 
                        (assert(sosial_stress))
                )
            else
                (assert(sosaial_burn_out))
        )
    )
)

(defrule lelah_fisik

)

