<?php include 'inc/header.php';?> 
<?php include 'inc/sidebar.php';?>

<?php
  $filepath= realpath(dirname(__FILE__));
   include($filepath.'/../classes/Brands.php'); 
?>


<?php
 $br = new Brands();
 if ($_SERVER['REQUEST_METHOD']=='POST' or isset($_POST['submit'])) {
    $brandName = $_POST['brandName'];
    
    $brands  = $br->topbrands($brandName);
 }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Add New Brands</h2>
                <?php
                    if (isset( $brands)) {
                        echo "$brands";
                    }
                ?>
               <div class="block copyblock"> 
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" placeholder="Enter Brands Name..." class="medium" name="brandName" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>