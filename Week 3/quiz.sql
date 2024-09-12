SELECT
	tp.nama,
  tk.jenis_kamar,
  tk.kapasitas,
  trh.tanggal_check_in,
  trh.tanggal_check_out
FROM
	tb_reservasi_hotel AS trh
INNER JOIN 
	tb_pelanggan AS tp 
ON 
	trh.pelanggan_id = tp.pelanggan_id
INNER JOIN tb_kamar AS tk 
ON 
	trh.kamar_id = tk.kamar_id
WHERE
	tp.nama = 'Kevin Sanjaya';