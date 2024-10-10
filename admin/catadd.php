<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include "../classes/Category.php"; ?>


<?php
 $cat = new Category();
 if ($_SERVER['REQUEST_METHOD']=='POST' or isset($_POST['submit'])) {
    $catName = $_POST['catName'];
    
    $category  = $cat->category($catName);
 }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Add New Category</h2>
                <?php
                    if (isset( $category)) {
                        echo "$category";
                    }
                ?>
               <div class="block copyblock"> 
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" placeholder="Enter Category Name..." class="medium" name="catName" />
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