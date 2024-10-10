<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include "../classes/Category.php"; 
$cat = new Category();
?>


<?php
if(isset($_GET['delCatId'])){
	$delCatId=$_GET['delCatId'];
	$delcat=$cat->deletecat($delCatId);
}
?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Category List</h2>
                <div class="block"> 
                <?php
                	if (isset($delcat)) {
                		echo "$delcat";
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
							 $getcat  = $cat->categorylist();
							 if ($getcat){
							 $i=0;
							 while ($value=$getcat->fetch_assoc()) {
							 	$i++;
						?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $value['catName']; ?></td>
							<td><a href="catEdit.php?catId=<?php echo $value['catId'];?>">Edit</a> || <a  onclick="return confirm('Are You Sure to Delete');" href="?delCatId=<?php echo $value['catId'];?>"> Delete </a></td>
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

