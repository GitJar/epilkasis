<script src="../../assets/js/sweetalert.min.js"></script>
<link rel="stylesheet" href="../../assets/css/sweetalert.min.css">


<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function (event) {
  swal({
  	title: "Username / Password tidak boleh kosong", 
  	text: "", 
  	type: "warning"
  }).then(function() {
    window.location = "./";
});
});
</script>
