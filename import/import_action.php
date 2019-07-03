<?php
include "excel_reader2.php";
$username = "root";
$password = "";
$database = "db_evoting";
 
$conn = mysqli_connect("localhost", $username, $password);
mysqli_select_db($conn,$database);
 
// file yang tadinya di upload, di simpan di temporary file PHP, file tersebut yang kita ambil
// dan baca dengan PHP Excel Class
$data = new Spreadsheet_Excel_Reader($_FILES['fileexcel']['tmp_name']);
$hasildata = $data->rowcount($sheet_index=0);
// default nilai 
$sukses = 0;
$gagal = 0;
 
for ($i=2; $i<=$hasildata; $i++)
{
  $data1 = $data->val($i,1); 
  $data2 = $data->val($i,2);
  $data3 = $data->val($i,3);
  $data4 = $data->val($i,4);
  $data5 = $data->val($i,5);
 
$query = "INSERT INTO t_user VALUES ('$data1','$data2','$data4', '$data3', '$data5')";
$hasil = mysqli_query($conn,$query);
 
if ($hasil) $sukses++;
else $gagal++;
 }
	
	include 'not.php';
?>