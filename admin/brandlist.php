<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php
  $filepath= realpath(dirname(__FILE__));
   include($filepath.'/../classes/Brands.php'); 
	$br = new Brands();
?>


<?php
if(isset($_GET['delBrandId'])){
	$delBrandId=$_GET['delBrandId'];
	$delBrand=$br->deletebrand($delBrandId);
}
?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Brands List</h2>
                <div class="block"> 
                <?php
                	if (isset($delBrand)) {
                		echo "$delBrand";
                	}
                ?>       
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php
							 $getbrand  = $br->brandlist();
							 if ($getbrand){
							 $i=0;
							 while ($value=$getbrand->fetch_assoc()) {
							 	$i++;
						?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $value['brandName']; ?></td>
							<td><a href="brandEdit.php?brandId=<?php echo $value['brandId'];?>">Edit</a> || <a  onclick="return confirm('Are You Sure to Delete');" href="?delBrandId=<?php echo $value['brandId'];?>"> Delete </a></td>
						</tr>
						<?php } } ?>
					</tbody>
				</table>
               </div>
            </div>
        </div>
<script type="text/javascript">
	$(document).ready(function () {
	    setupLeftMenu();

	    $('.datatable').dataTable();
	    setSidebarHeight();
	});
</script>
<?php include 'inc/footer.php';?>

