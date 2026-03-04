# Interview Techniques — Deep Reference

> Dibaca Claude saat Stage 1 Empathize, khususnya ketika:
> - User akan/sedang melakukan user interview
> - User punya data kualitatif yang perlu di-probe lebih dalam
> - User perlu discussion guide yang kuat

---

## Table of Contents
1. [Prinsip Dasar Interview yang Baik](#1-prinsip-dasar)
2. [Teknik Probing Lanjutan](#2-teknik-probing)
   - Laddering
   - 5 Whys
   - Cognitive Mapping
   - Critical Incident Technique
3. [Discussion Guide Generator](#3-discussion-guide)
4. [Analisis Data Kualitatif](#4-analisis)
5. [Red Flags dalam Interview](#5-red-flags)

---

## 1. Prinsip Dasar Interview yang Baik

### Golden Rules
```
✅ LAKUKAN:
• Tanya tentang PERILAKU MASA LALU, bukan pendapat masa depan
  → "Ceritain terakhir kali lo..." bukan "Kalau ada fitur X, lo bakal..."
• Gunakan silence sebagai tool — diam 3–5 detik setelah jawaban sering unlock insight lebih dalam
• Mirror kata-kata user: "Lo bilang 'ribet' — ribet yang lo maksud seperti apa?"
• Tanya "kenapa" dalam bentuk yang tidak terasa menghakimi: "Apa yang bikin lo pilih itu?"
• Minta cerita konkret: "Bisa lo walk me through step by step apa yang terjadi waktu itu?"

❌ HINDARI:
• Leading questions: "Lo setuju kalau fitur ini membantu, kan?"
• Double-barreled: "Seberapa mudah dan seberapa cepat lo bisa selesaikan itu?"
• Hypothetical: "Kalau lo bisa desain ulang, lo bakal...?"
• Binary yang terlalu cepat: "Ini membantu atau tidak?"
• Interpretasi prematur: "Jadi lo frustrated karena..." sebelum user bilang itu
```

### Struktur Sesi yang Terbukti Efektif
```
PEMBUKA (5 menit)
→ Rapport building — konteks santai
→ "Gw lebih banyak dengerin daripada ngomong — gak ada jawaban salah"
→ Minta izin rekam (kalau ada)

WARM UP (5–10 menit)
→ Pertanyaan luas tentang konteks mereka (pekerjaan, rutinitas)
→ Tujuan: bangun baseline mental model user

CORE (20–30 menit)
→ Teknik probing mendalam (lihat section 2)
→ Fokus pada perilaku, bukan pendapat

WRAP UP (5 menit)
→ "Ada hal yang belum gw tanya tapi lo rasa penting?"
→ "Kalau lo harus ubah satu hal dari [produk/pengalaman], apa itu?"
```

---

## 2. Teknik Probing Lanjutan

### 2a. Laddering (untuk gali motivasi & nilai)

**Kapan pakai:** User menyebut fitur atau atribut — lo mau tahu *kenapa* itu penting buat mereka.

**Cara kerja:** Tanya "kenapa itu penting?" secara berulang, memanjat dari atribut → consequences → values.

```
CONTOH LADDER:
User: "Gw suka aplikasinya karena cepet."
Claude: "Cepet itu penting buat lo karena...?"
User: "Biar gw gak nunggu lama."
Claude: "Dan kalau lo nunggu lama, apa yang terjadi?"
User: "Gw jadi males lanjut, akhirnya gak jadi beli."
Claude: "Apa yang bikin lo males di titik itu?"
User: "Rasanya kayak buang waktu. Waktu gw tuh berharga."
→ NILAI YANG TERUNGKAP: User menghargai time efficiency sebagai core value

TEMPLATE LADDER:
Atribut: "[Fitur/aspek yang disebutkan user]"
→ Consequences: "Kalau [atribut] ada/tidak ada, apa yang terjadi buat lo?"
→ Emotional consequences: "Dan itu bikin lo ngerasa...?"
→ Values: "Apa yang penting buat lo dari semua itu?"
```

**Stop kapan:** Ketika user mulai menyebut nilai abstrak (waktu, kontrol, rasa aman, kepercayaan) — itu titik terminal.

---

### 2b. 5 Whys (untuk gali root cause)

**Kapan pakai:** User menyebut pain point atau masalah — lo mau pastikan itu symptom atau root cause.

**Cara kerja:** Tanya "kenapa" sampai 5 kali (tidak harus persis 5 — stop kalau sudah sampai akar).

```
CONTOH 5 WHYS:
[1] "Kenapa lo merasa checkout-nya susah?"
    → "Banyak step yang harus diisi."
[2] "Kenapa step yang banyak itu jadi masalah?"
    → "Gw sering lupa data yang diminta, kayak kode pos atau nomor kartu."
[3] "Kenapa lo lupa data itu di momen itu?"
    → "Gw biasanya order dari HP, jadi kartu gw gak ada di tangan."
[4] "Kenapa lo tidak save data itu di aplikasi sebelumnya?"
    → "Gw gak tau bisa disimpen — gak ada yang ngasih tau."
[5] "Kenapa informasi itu tidak terlihat oleh lo?"
    → "Opsi-nya ada tapi kecil banget, gw gak notice."
→ ROOT CAUSE: Discoverability masalah — bukan banyaknya step

ATURAN MAIN:
• Jangan assume "why" — tanya, jangan isi sendiri
• Kalau user jawab dengan atribut eksternal ("sistemnya lambat"), gali lebih dalam: 
  "Dan kalau sistem itu cepet, masalahnya solved?"
• Kalau muncul cabang baru (dua alasan berbeda), explore keduanya
```

---

### 2c. Cognitive Mapping (untuk petakan mental model user)

**Kapan pakai:** Lo mau memahami bagaimana user *melihat* domain atau proses — bukan bagaimana produk lo dirancang.

**Cara kerja:** Minta user describe proses dari perspektif mereka, lalu lo map-kan.

```
TEKNIK VERBAL COGNITIVE MAPPING:

Step 1 — Trigger cerita:
"Kalau lo harus jelasin ke teman lo cara [melakukan X], lo mulai dari mana?"

Step 2 — Dengarkan urutan:
Catat: Langkah apa yang disebut pertama? Apa yang skip? Apa yang diasumsikan?

Step 3 — Probe gap:
"Antara [langkah A] dan [langkah B] yang lo sebut, apa yang terjadi di tengahnya?"
"Lo tadi langsung lompat ke [step C] — itu otomatis terjadi atau ada yang lo lakukan?"

Step 4 — Bangun map:
```
MENTAL MODEL USER:
[Trigger] → [Langkah 1 user] → [Gap A] → [Langkah 2 user] → [Goal]

MENTAL MODEL PRODUK:
[Trigger] → [Step 1] → [Step 2] → [Step 3] → [Goal]

MISMATCH:
⚠️ User skip [Step 2] — tidak sadar ada / tidak relevan buat mereka
⚠️ User punya [Gap A] yang produk tidak handle
```

**Insight yang sering muncul:**
- Langkah yang lo anggap penting, user tidak notice
- User punya mental model yang berbeda total tentang urutan proses
- Ada "invisible step" yang user lakukan di luar produk (WhatsApp ke teman, spreadsheet sendiri, dll)

---

### 2d. Critical Incident Technique (untuk gali momen ekstrem)

**Kapan pakai:** Lo mau data konkret tentang pengalaman — bukan opini umum.

**Cara kerja:** Minta user cerita tentang momen paling berkesan (positif atau negatif).

```
OPENING QUESTIONS:
• "Ceritain pengalaman paling frustasi yang pernah lo alami waktu [konteks]."
• "Kapan terakhir kali lo beneran senang/puas waktu menggunakan [produk/layanan]? Ceritain."
• "Ada satu momen yang bikin lo mikir 'ini gak make sense'? Ceritain detailnya."

PROBING SEQUENCE:
→ "Itu terjadi kapan? Konteksnya gimana?"
→ "Lo lagi ngapain waktu itu terjadi?"
→ "Apa yang lo rasain di momen itu?"
→ "Apa yang lo lakukan setelahnya?"
→ "Kalau lo bisa rewind, apa yang lo mau berbeda?"

OUTPUT YANG DIHASILKAN:
Setiap incident → satu kartu:

┌─────────────────────────────────────────┐
│ INCIDENT: [nama singkat]                │
│ Konteks: ...                            │
│ Trigger: ...                            │
│ Perilaku: ...                           │
│ Emosi: ...                              │
│ Resolusi: ...                           │
│ Implikasi desain: ...                   │
└─────────────────────────────────────────┘
```

---

## 3. Discussion Guide Generator

Kalau user minta bantu bikin discussion guide, gunakan template ini:

```
═══════════════════════════════════════════════════════════════════
📝 DISCUSSION GUIDE — [Nama Project]
Target: [Profil responden]
Durasi: [30 / 45 / 60 menit]
Tujuan: [Learning goals dari Stage 1]
═══════════════════════════════════════════════════════════════════

PEMBUKA (5 menit)
"Makasih udah luangin waktu. Sesi ini bukan tes — gak ada jawaban salah.
Gw lebih banyak dengerin. Kalau ada yang gak nyaman, bilang aja."

[Izin rekam jika diperlukan]

WARM UP (5–10 menit)
1. "Ceritain sedikit tentang rutinitas harian lo terkait [domain]."
2. "Seberapa sering lo [aktivitas relevan]? Kapan biasanya?"

CORE — [Learning Goal 1] (10–15 menit)
3. "Ceritain pengalaman terakhir lo waktu [konteks spesifik]."
   → Probe: "Walk me through step by step."
   → Probe: "Di titik itu, apa yang lo pikirkan / rasakan?"
4. [Pertanyaan CIT atau Laddering sesuai konteks]

CORE — [Learning Goal 2] (10–15 menit)
5. [Pertanyaan spesifik]
   → Probe: 5 Whys jika ada pain point
   → Probe: "Apa workaround yang lo pakai sekarang?"

WRAP UP (5 menit)
6. "Kalau lo harus ubah satu hal dari [pengalaman/produk], apa itu?"
7. "Ada yang belum gw tanya tapi lo rasa penting?"

═══════════════════════════════════════════════════════════════════
```

**Aturan penulisan pertanyaan:**
- Mulai dengan kata kerja terbuka: "Ceritain", "Jelaskan", "Gambarkan"
- Hindari "apakah" dan "apakah lo pernah" → terlalu mudah dijawab ya/tidak
- Maksimal 7–9 pertanyaan utama — sisanya probe natural
- Urutkan dari general ke spesifik

---

## 4. Analisis Data Kualitatif

### Pattern Synthesis setelah interview:
```
"Dari [X] interview yang lo lakukan, gw nemu pattern ini:

🔴 PATTERN 1: [nama — 2-3 kata]
   "[Pernyataan insight — satu kalimat kuat]"
   Evidence:
   • [Quote responden 1]: "..."
   • [Behavior responden 2]: ...
   • [Observasi]: ...
   Frequency: [X dari Y responden]
   Confidence: HIGH / MEDIUM / LOW

🔴 PATTERN 2: [nama]
   [dst]

🟡 OUTLIER: [sesuatu yang hanya muncul 1x tapi menarik]
   Worth noting karena: ..."
```

### Insight Statement Formula:
```
Insight yang kuat bukan sekadar observasi — dia punya:
[OBSERVASI] + [MAKNA/INTERPRETASI] + [IMPLIKASI]

Contoh lemah: "User sering lupa password."
Contoh kuat: "User tidak mau repot create akun karena mereka tidak yakin
              akan sering kembali — mereka butuh trust signal sebelum commit."

Template:
"[Segmen user] [perilaku yang diamati] bukan karena [asumsi umum],
tapi karena [underlying reason yang ditemukan dari riset].
Ini berarti [implikasi desain/bisnis]."
```

---

## 5. Red Flags dalam Interview

| Red Flag | Artinya | Cara handle |
|----------|---------|-------------|
| User jawab seperti yang "seharusnya" | Social desirability bias | "Gak ada jawaban benar/salah — gw lebih tertarik sama pengalaman nyata lo" |
| Semua jawaban positif | User ingin menyenangkan | Tanya tentang momen terburuk secara eksplisit |
| User generalize ("biasanya sih...") | Lo butuh spesifik | "Bisa ceritain satu kejadian konkret?" |
| User menjawab untuk orang lain | Proxy thinking | "Kalau khusus untuk lo sendiri, gimana?" |
| Jawaban sangat singkat | Belum trust / pertanyaan kurang tepat | Silence + "Bisa ceritain lebih?" |
| User langsung kasih solusi | Ingin helpful, tapi bukan data | "Menarik — apa yang bikin lo pikirin solusi itu?" |

---

*Reference ini adalah bagian dari skill `ux-deep-research`. Kembali ke SKILL.md untuk routing stage berikutnya.*
