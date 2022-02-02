<?php
session_start();
session_unset();
session_destroy();
header('Location:firstpage.php');
?>
<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>


