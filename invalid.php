<script src="assets/js/sweetalert.min.js"></script>
<link rel="stylesheet" href="assets/css/sweetalert.min.css">


<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function (event) {
  swal({
  	title: "Maaf", 
  	text: "Anda tidak berhak memberikan suara, Silahkan hubungi panitia", 
  	type: "error"
  }).then(function() {
    window.location = "./";
});
});
</script>
