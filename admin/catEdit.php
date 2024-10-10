<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include "../classes/Category.php"; ?>


<?php
if(!isset($_GET['catId']) || $_GET['catId']== NULL){
	echo "<script>window.location='catlist.php'</script>";
}else{
	$catId=$_GET['catId'];
}
 $cat = new Category();
 if ($_SERVER['REQUEST_METHOD']=='POST' or isset($_POST['submit'])) {
    $catName = $_POST['catName'];
    
    $category  = $cat->eidtCat($catName, $catId);
 }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Update Category</h2>
                <?php
                    if (isset( $category)) {
                        echo "$category";
                    }
                ?>
               <div class="block copyblock"> 
               	 <?php
							 $getcat  = $cat->getCatName($catId);
							 if ($getcat){
							 while ($value=$getcat->fetch_assoc()) {
						?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['catName'];?>"class="medium" name="catName" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php } }?>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>