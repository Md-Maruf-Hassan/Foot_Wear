<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php
  $filepath= realpath(dirname(__FILE__));
   include($filepath.'/../classes/Brands.php'); 
?>


<?php
if(!isset($_GET['brandId']) || $_GET['brandId']== NULL){
	echo "<script>window.location='brandlist.php'</script>";
}else{
	//$brandId=preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['brandId']);
    //$brandId= $_GET['brandId'];
   // preg_filter(pattern, replacement, subject)
    $brandId = preg_filter('/[^-a-zA-Z0-9_]/', '', $_GET['brandId']);
}
 $br = new Brands();
 if ($_SERVER['REQUEST_METHOD']=='POST' or isset($_POST['submit'])) {
    $brandName = $_POST['brandName'];
    
    $category  = $br->eidtbrand($brandName, $brandId);
 }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Update Brands</h2>
                <?php
                    if (isset( $category)) {
                        echo "$category";
                    }
                ?>
               <div class="block copyblock"> 
               	 <?php
							 $getbrand  = $br->getBrandName($brandId);
							 if ($getbrand){
							 while ($value=$getbrand->fetch_assoc()) {
						?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['brandName'];?>"class="medium" name="brandName" />
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