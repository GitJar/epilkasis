<script src="../assets/js/sweetalert.min.js"></script>
<link rel="stylesheet" href="../assets/css/sweetalert.min.css">


<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function (event) {
  swal({
  	title: "Upload Status", 
  	text: "Sukses import "+<?php echo $sukses ?>+" user dan sebanyak " +<?php echo $gagal ?>+ " user gagal di import", 
  	type: "success"
  }).then(function() {
    window.location = "../admin/dashboard.php?page=user";
});
});
</script>
