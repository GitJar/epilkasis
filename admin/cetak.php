<?php
include 'DBController.php';
$db_handle = new DBController();
$productResult = $db_handle->runQuery("select nama_calon, suara from t_kandidat");

    ?>
<html>
<head>

<style>
body {
    font-size: 0.95em;
    font-family: arial;
    color: #212121;
}

th {
    background: #E6E6E6;
    border-bottom: 1px solid #000000;
}

#table-container {
    width: 850px;
    margin: 50px auto;
}

table#tab {
    border-collapse: collapse;
    width: 100%;
}

table#tab th, table#tab td {
    border: 1px solid #000;
    padding: 8px 15px;
    font-size: 0.95em;
}
.center{
    text-align: center;
}
.btn {
    padding: 8px 4px 8px 1px;
}
.logo{
    height: 100px;
}
#btnExport {
    padding: 10px 40px;
    background: #499a49;
    border: #499249 1px solid;
    color: #ffffff;
    font-size: 0.9em;
    cursor: pointer;
}
#left{
    width: 18%;
    display: inline-block;
    float: left;
}
#mid{
    width: 65%;
    display: inline-block;    
}
#right{
    width: 15%;
    float: right;
    display: inline-block;
}
#satu {
    text-align: center;
    font-weight: bold;
    font-size: 18px;
}
#dua {
    text-align: center;
    font-size: 14px;
}
#tiga {
    text-align: center;
    font-style: italic;
}
#empat{
    text-align: center;
    font-weight: bold;
}
.ttd{
        display: flex;
    position: relative;
    width: 86%;
    margin-left: 7%;
    margin-top: 50px;
}
.kiri{
    width: 70%;
    float: left;
    padding-left: 10px;
}
.kanan{
    width: 30%;
    float: right;
}
.full{
    width: 100%;
    text-align: center;
}
</style>
</head>
<body>
    <div id="table-container">
        <div id="kop">
            <span id="left"> <img class="logo" src="kemenag-logo.png"> </span>
            <span id="mid">
            <div id="satu">KEMENTERIAN AGAMA REPUBLIK INDONESIA</div>
            <div id="satu">KANTOR KEMENTERIAN AGAMA KOTA SURAKARTA</div>
            <div id="satu">MADRASAH TSANAWIYAH NEGERI I</div>
            <div id="dua">Jl. MT. Haryono 24D Telp./Fax.(0271) 713479 Kode Pos 57139 Surakarta</div>
            <div id="tiga">Website : www.mtsn1solo.sch.id E-mail : info@mtsn1solo.sch.id</div>
        </span>
        <span id="right"> <img class="logo" src="mtsn1-logo.png"> </span>
        </div>
        <hr style="border: 1px solid #000" >
        <br><br><br>
        <div id="empat">HASIL PEMILIHAN KETUA OSIS 
        MTs NEGERI SURAKARTA I</div>
        <div id="empat">2019/2020</div>
        <br><br>
        <table id="tab">
            <thead>
                <tr>
                    <th class="center" width="50%">Nama Calon</th>
                    <th class="center"width="50%">Perolehan Suara</th>
                </tr>
            </thead>
            <tbody>
 
            <?php
            if (! empty($productResult)) {
                foreach ($productResult as $key => $value) {
                    ?>
                 
                     <tr>
                    <td><?php echo $productResult[$key]["nama_calon"]; ?></td>
                    <td class="center"><?php echo $productResult[$key]["suara"]; ?></td>
                </tr>
             <?php
                }
            }
            ?>
      </tbody>
        </table>
        <div class="ttd">
            <div class="kiri">
<br><br>
<div class="biasa">Waka Kesiswaan</div>
    <br>
<br>
<br><br>
<div class="biasa">Edi Hartanto, S.Pd.</div>
<div class="biasa">NIP. 19720216 200701 1 026</div>
</div>
<div class="kanan">
    <br>
    <div class="biasa">Surakarta, &nbsp&nbsp&nbsp Agustus 2019</div>
    <div class="biasa">Pembina OSIS</div>
    <br>
<br>
<br><br>
<div class="biasa">Joko Susilo, S.Pd.</div>
<div class="biasa">NIP. -</div>
</div>
</div>
<div class="full">
    <br>
    <br>
    <br>
    <div class="biasa">Mengetahui</div>
    <div class="biasa">Kepala Madrasah</div>
    <br>
<br>
<br><br>
<div class="biasa">Drs. H. Kirno Suwanto, M.Pd.</div>
<div class="biasa">NIP. 19660929 199403 1 006</div>
</div>
            <script>
 window.print();
</script>
    </div>
</body>
</html>