<?php
require('./../src/config.php');

?>

<form action="" method="post" enctype="multipart/form-data">
        <label for="uploadedFileInput">
            Wybierz plik do wgrania na serwer:
        </label><br>
        <input type="file" name="uploadedFile" id="uploadedFileInput" required><br>
        <input type="submit" value="Wyślij mema" name="submit"><br>
</form>

<?php
    if(isset($_POST['submit']))  {
        Post::upload($_FILES['uploadedFile']['tmp_name']);
    }
?>

Ostatni post:
<pre>
<?php
var_dump(Post::getPage());
?>