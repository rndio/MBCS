SELECT 
  SUM(trh.total_biaya) as total_pendapatan,
  COUNT(trh.reservasi_id) as total_transaksi
FROM 
  tb_reservasi_hotel AS trh 
WHERE 
  YEAR(trh.tanggal_check_in) = YEAR(NOW()) 
  AND MONTH(trh.tanggal_check_in) = MONTH(NOW());