# Anti-Patterns — Deep Reference

> Dibaca Claude saat:
> - Ada warning sign dalam sesi (lihat tabel Warning Signs di SKILL.md)
> - User atau tim menunjukkan pola yang bisa merusak kualitas riset
> - Sebelum mulai eksekusi, sebagai "sanity check" daftar jebakan umum

---

## Table of Contents
1. [Bias dalam Riset — Deteksi & Counter](#1-bias)
2. [Anti-Patterns di Setiap Stage](#2-anti-patterns-per-stage)
3. [Team Dynamics yang Merusak Riset](#3-team-dynamics)
4. [Tanda-tanda Research Theatre](#4-research-theatre)
5. [Recovery Protocol — Kalau Riset Sudah Berjalan Salah](#5-recovery)

---

## 1. Bias dalam Riset — Deteksi & Counter

### Confirmation Bias (paling umum dan paling berbahaya)
```
DEFINISI: Mencari data yang mengkonfirmasi apa yang sudah dipercaya,
mengabaikan yang bertentangan.

TANDA-TANDA:
• "Nah, ini buktinya kita benar."
• Pertanyaan interview yang leading: "Jadi lo setuju ini bikin bingung?"
• Hanya quote yang support hipotesis yang masuk ke report
• Outlier yang contradict diabaikan

COUNTER:
• Sebelum riset: tulis down asumsi yang ingin DI-INVALIDATE, bukan hanya dikonfirmasi
• Aktif cari evidence yang bertentangan: "Temuan apa yang paling unexpected?"
• Devil's advocate: minta satu orang tim present kasus sebaliknya
• Claude prompt: "Tunjukin gw data yang TIDAK support kesimpulan ini."
```

### Sampling Bias
```
DEFINISI: Responden yang dipilih tidak representatif dari real user.

TANDA-TANDA:
• Semua responden dari network pribadi tim
• Semua responden power user / early adopter
• Tidak ada responden yang pernah gagal atau churned
• Semua responden yang "senang" dengan produk

COUNTER:
• Sengaja rekrut "extreme users" — yang paling heavy dan paling jarang pakai
• Sertakan churned user dalam sampling (mereka punya insight yang tidak dimiliki retained user)
• Minta tim CS/Sales nominasikan "problem customer" bukan hanya "happy customer"
```

### Social Desirability Bias
```
DEFINISI: Responden menjawab apa yang mereka pikir peneliti ingin dengar.

TANDA-TANDA:
• Semua jawaban positif
• "Fitur ini bagus sekali!" tapi behavior-nya tidak menggunakan
• User setuju dengan semua yang researcher propose

COUNTER:
• "Bukan tes — tidak ada jawaban benar/salah" di awal sesi
• Tanya tentang masa lalu, bukan pendapat: "Ceritain terakhir kali lo..." bukan "Lo suka fitur ini gak?"
• Watch behavior, bukan hanya kata-kata: "Lo bilang mudah, tapi gw lihat lo berhenti di sini — apa yang lo pikirkan saat itu?"
• Observer role vs facilitator role dipisah
```

### Recency Bias
```
DEFINISI: Terlalu berat pada informasi atau kejadian yang paling baru.

TANDA-TANDA:
• Riset dilakukan setelah ada complaint besar — semua jadi tentang itu
• Insight dari interview terakhir lebih dominan dari yang pertama
• Keputusan berdasarkan satu data point yang baru saja terjadi

COUNTER:
• Synthesize setelah semua sesi selesai, bukan after each one
• Timbang setiap data point dengan frequency yang sama
• Bedakan: "Ini satu kejadian atau pattern yang konsisten?"
```

### Anchoring Bias
```
DEFINISI: Terlalu bergantung pada informasi pertama yang diterima.

TANDA-TANDA:
• "User pertama bilang X, jadi gw udah yakin itu masalahnya."
• Pertanyaan di interview selanjutnya diframe berdasarkan jawaban sesi pertama
• Competitor yang disebut pertama jadi referensi utama tanpa exploration lain

COUNTER:
• Di Stage 1 — tanya user tentang temuan mereka SEBELUM share temuan lo
• Blind analysis: analyze beberapa data point sebelum tahu dari siapa
• Reminder di synthesis: "Kita tunggu sampai 3 sesi selesai sebelum buat conclusion."
```

---

## 2. Anti-Patterns di Setiap Stage

### Stage 0 — Anti-patterns saat setting context
```
❌ ANTI-PATTERN: "Kita udah tau masalahnya, riset ini cuma formalitas."
→ Ini research theater (lihat section 4)
→ Counter: "Kalau sudah tau, apa yang lo harapkan berbeda dari riset ini?
   Kalau tidak ada, mungkin energy-nya lebih baik ke eksekusi."

❌ ANTI-PATTERN: Research objective = product objective
→ "Kita mau validasi bahwa fitur X disukai user."
→ Ini bukan research objective, ini confirmation bias by design.
→ Counter: Reformulasi: "Kita mau memahami apakah dan bagaimana [fitur X]
   solve [problem Y] yang user alami."

❌ ANTI-PATTERN: Target user terlalu broad
→ "Semua orang yang pakai smartphone."
→ Counter: Narrowing exercise: siapa yang paling sering experience problem ini?
   Mulai dari sana.
```

### Stage 1 — Anti-patterns saat empathize
```
❌ ANTI-PATTERN: Interview yang jadi pitching session
→ Researcher menjelaskan fitur, user diminta feedback
→ Ini bukan empathize — ini product demo dengan extra steps
→ Counter: Banned topic di awal: "Kita tidak akan bahas fitur specific.
   Kita hanya mau dengar pengalaman lo."

❌ ANTI-PATTERN: Note-taking yang selective
→ Hanya catat yang "menarik" atau "relevan"
→ Counter: Rekam (dengan izin) dan transcript — jangan andalkan memory
→ Kalau tidak bisa rekam: assigned note-taker, bukan facilitator yang catat

❌ ANTI-PATTERN: Closure terlalu cepat
→ User menjawab, researcher langsung move on
→ Counter: Prinsip "pause sebelum lanjut" — diam 3–5 detik setelah jawaban
   Sering kali jawaban terbaik muncul setelah silence

❌ ANTI-PATTERN: N=1 dijadikan keputusan besar
→ "User pertama yang gw interview bilang X, jadi gw yakin itu masalahnya."
→ Counter: Flag confidence level. Satu insight dari satu responden = LOW confidence.
   Butuh minimal 3 responden dengan konsistensi yang sama untuk mulai confident.
```

### Stage 2 — Anti-patterns saat define
```
❌ ANTI-PATTERN: Problem statement yang implicitly solves itself
→ "Bagaimana kita bisa membuat fitur X lebih mudah digunakan?"
→ Ini bukan problem statement — ini solution statement tersamar.
→ Counter: "Sebelum kita sebut solusi, apa problem-nya? Kenapa [user segment]
   mengalami masalah? Apa yang mereka tidak bisa lakukan sekarang?"

❌ ANTI-PATTERN: Multiple problems dijejali dalam satu statement
→ "User kesulitan menemukan fitur, tidak mengerti flow, dan tidak percaya keamanannya."
→ Counter: Pisahkan. Setiap problem statement = satu masalah spesifik.
   Prioritasi mana yang paling krusial dulu.

❌ ANTI-PATTERN: Root cause confusion
→ Berhenti di symptom, tidak gali lebih dalam
→ "User tidak bisa checkout." — ini symptom, bukan problem.
→ Counter: 5 Whys (lihat interview-techniques.md) sampai ketemu akar masalah.
```

### Stage 3 — Anti-patterns saat ideate
```
❌ ANTI-PATTERN: "Yes, and" yang tidak kritis
→ Semua ide diterima, tidak ada yang di-challenge
→ Counter: Setelah diverge, wajib convergence dengan challenge:
   "Asumsi terbesar yang harus bener supaya ide ini berhasil itu apa?"

❌ ANTI-PATTERN: HiPPO (Highest Paid Person's Opinion) effect
→ Ide dari pimpinan langsung diterima tanpa evaluasi
→ Counter: Anonymous voting sebelum discussion
   atau "Pre-mortem": "Bayangkan ide ini gagal — kenapa?"

❌ ANTI-PATTERN: Ideasi sebelum masalah jelas
→ Brainstorm dilakukan sebelum problem statement di-define
→ Counter: Hard stop. "Kita belum sepakat masalahnya apa.
   Brainstorm sekarang = solusi untuk masalah yang salah."
```

### Stage 5 — Anti-patterns saat testing
```
❌ ANTI-PATTERN: Testing sebagai validation, bukan learning
→ Harapan: "Semoga user bilang ini bagus."
→ Counter: Reframe sebelum testing: "Kita testing untuk menemukan
   di mana ini gagal, bukan untuk konfirmasi bahwa ini berhasil."

❌ ANTI-PATTERN: Facilitator yang "membantu" user stuck
→ User stuck → facilitator kasih hint → user selesai → "Testing berhasil!"
→ Counter: Protokol non-intervensi. Kalau user stuck, catat — jangan help.
   Stuck-nya itu data.

❌ ANTI-PATTERN: Kesimpulan dari task completion rate saja
→ "5 dari 5 user bisa complete task — sukses!"
→ Counter: Lihat juga: berapa lama? Berapa kali error? Ekspresi non-verbal apa?
   Completion ≠ good experience.
```

---

## 3. Team Dynamics yang Merusak Riset

### Engineering yang mendominasi interpretasi
```
SITUASI: Engineer ikut sesi riset, langsung interpret semua sebagai technical requirement.
RISIKO: Frame problemnya terlalu sempit — hanya yang bisa di-fix secara teknis.
COUNTER: Pisahkan observer role. Setelah sesi: semua peserta tulis observasi
sendiri sebelum discussion. Baru compare.
```

### Stakeholder yang "ikut" sesi tapi intervensi
```
SITUASI: VP ikut session, mulai tanya user tentang feature request atau pricing.
RISIKO: Mengkontaminasi sesi, user jadi defensive atau ingin menyenangkan VP.
COUNTER: Ground rules sebelum sesi dimulai. Observer bisa catat tapi tidak boleh
tanya kecuali seizin researcher. Stakeholder yang tidak bisa commit → jangan ikut.
```

### "Research by committee"
```
SITUASI: Terlalu banyak orang punya input ke discussion guide dan synthesis.
RISIKO: Pertanyaan jadi generic, synthesis jadi kompromis, insight jadi tidak tajam.
COUNTER: Lead researcher punya veto right atas methodology.
Input dari stakeholder = context dan constraint, bukan design riset.
```

---

## 4. Tanda-tanda Research Theatre

Research theatre = riset yang dilakukan bukan untuk belajar, tapi untuk justifikasi keputusan yang sudah dibuat.

```
TANDA-TANDA:
• "Kita udah tau hasilnya — ini cuma buat dokumentasi."
• Pertanyaan interview semua mengarah ke satu jawaban
• Insight yang tidak cocok dengan narrative "diabaikan" atau "tidak signifikan"
• Riset dilakukan setelah keputusan dibuat — bukan sebelum
• Timeline riset: 1 hari. Timeline build: 6 bulan. (Inverted priority)
• Stakeholder tidak tertarik dengan temuan — hanya dengan "apakah user suka?"

CARA CLAUDE HANDLE KALAU SITUASI INI TERDETEKSI:
"Gw notice research question ini sudah punya jawaban yang preferred.
Kalau tujuannya adalah konfirmasi, itu valid — tapi itu usability testing atau
concept validation, bukan discovery research.

Dua opsi:
1. Kita adjust metode — focus ke validasi yang honest, termasuk kemungkinan 'tidak'
2. Kita explore apakah ada aspek yang masih genuinely open dan worth di-riset

Gw bisa bantu dengan keduanya — tapi gw mau pastiin lo dapat value nyata dari proses ini."
```

---

## 5. Recovery Protocol — Kalau Riset Sudah Berjalan Salah

### Data yang sudah terkontaminasi bias
```
SITUASI: Interview sudah selesai, tapi pertanyaannya leading dan datanya suspect.

TRIAGE:
□ Berapa banyak yang terkontaminasi? (semua sesi atau beberapa?)
□ Ada data lain yang bisa di-triangulasi? (analytics, survey, session recording?)
□ Seberapa krusial keputusan yang akan dibuat berdasarkan data ini?

OPSI:
A. PARTIAL SALVAGE: Gunakan hanya behavioral observations, buang opini/rating
B. SUPPLEMENTARY RESEARCH: Tambah 3–5 interview baru dengan pertanyaan yang clean
C. DISCARD & REDO: Kalau keputusannya besar dan datanya fundamentally flawed
D. TRANSPARANT FLAGGING: Gunakan tapi label confidence level LOW + caveat di report
```

### Project yang kehilangan focus di tengah jalan
```
SITUASI: Sesi riset sudah jalan 2 minggu tapi tidak jelas mau ke mana.

TRIAGE:
□ Research question awal masih relevan?
□ Ada temuan yang muncul yang tidak expected tapi lebih penting?
□ Stakeholder masih sama pentingnya dengan awal project?

RECOVERY:
"Gw mau kita pause sejenak dan recalibrate.
Dari semua yang sudah kita kumpulkan, apa satu pertanyaan yang paling penting
untuk dijawab sebelum project ini selesai?

Kita fokus ke sana. Sisanya masuk backlog."
```

### Hasil riset yang tidak diadopsi tim
```
SITUASI: Research brief sudah di-share tapi tidak ada yang bergerak.

KEMUNGKINAN PENYEBAB:
• Tidak ada champion di dalam tim (perlu satu orang yang drive)
• Format output tidak actionable (too much info, tidak ada clear next step)
• Timing yang salah (share di tengah sprint, bukan di planning)
• Insight tidak terhubung ke OKR/metric yang tim peduli

RECOVERY:
• Buat "1-pager version" — hanya 3 insight dan 3 rekomendasi
• Hubungkan langsung ke metric yang sudah ada di tim
• Cari sponsor yang bisa champion temuan ini dalam planning cycle
• Kalau masih tidak didengar: escalate cost of not acting dengan data
```

---

*Reference ini adalah bagian dari skill `ux-deep-research`. Kembali ke SKILL.md untuk routing stage berikutnya.*
