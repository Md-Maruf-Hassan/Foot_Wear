<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include "../classes/Customer.php"; ?>


<?php
if(!isset($_GET['customerid']) || $_GET['customerid']== NULL){
	echo "<script>window.location='orderlist.php'</script>";
}else{
	$cmrid=$_GET['customerid'];
}
     
    if ($_SERVER['REQUEST_METHOD']=='POST' or isset($_POST['submit'])) {
        echo "<script>window.location='orderlist.php'</script>";
 }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Customar Profile</h2>
               <div class="block copyblock"> 
               	<?php
                    $cur = new Customer();
    				 $customarview  = $cur->viewcustomar($cmrid);
    				 if ($customarview){
    				 while ($value = $customarview->fetch_assoc()) {
				?>
                 <form action="" method="post">
                    <table class="form">					
                        
                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['name'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['city'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['zip'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['email'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['address'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['country'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="text" value="<?php echo $value['phone'];?>" class="medium" readonly="readonly" />
                            </td>
                        </tr>


						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Ok" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php } } ?>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>