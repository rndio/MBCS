SELECT 
  tp.nama, 
  tp.jenis_kelamin, 
  tp.no_telepon, 
  tk.jenis_kamar, 
  tk.kapasitas, 
  tk.harga_per_malam, 
  trh.tanggal_check_in, 
  trh.tanggal_check_out, 
  trh.jumlah_kamar, 
  trh.total_biaya 
FROM 
  `tb_reservasi_hotel` as trh 
  INNER JOIN tb_kamar AS tk ON trh.kamar_id = tk.kamar_id 
  INNER JOIN tb_pelanggan AS tp ON trh.pelanggan_id = tp.pelanggan_id
WHERE
  YEAR(trh.tanggal_check_in) = YEAR(NOW()) 
ORDER BY 
  total_biaya DESC 
LIMIT 
  10;