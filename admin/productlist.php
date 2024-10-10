<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/Product.php';?>
<?php include_once "../helper/Format.php"; ?>

<?php
	$fm = new Format();

   $pd = new Product();
   $productget = $pd->allproductget();

   if (isset($_GET['delproduct'])) {
   	$delproduct    = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['delproduct']);
   	//$delproduct    = $_GET['delproduct'];
   	$deleteproduct = $pd->productdelete($delproduct);
   }

 

?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Product List</h2>
        <div class="block">
        <?php
        	if (isset($deleteproduct)) {
        		echo $deleteproduct;
        	}
        ?>  
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th width="5%">So. </th>
					<th width="15%">productName</th>
					<th width="10%">Catagory</th>
					<th width="10%">Brand</th>
					<th width="20%">Description</th>
					<th width="10%">Price</th>
					<th width="10%">Image</th>
					<th width="10%">Type</th>
					<th width="10%">Action</th>
				</tr>
			</thead>
			<tbody>
				<?php 
					$i = 0;
					if ($productget) {
						while ($value = $productget->fetch_assoc()) {	
						$i++;	
					?>
				<tr class="odd gradeX">
					<td><?php echo $i; ?></td>
					<td><?php echo $value['productName']; ?></td>
					<td><?php echo $value['catName']; ?></td>
					<td><?php echo $value['brandName']; ?></td>
					<td><?php echo html_entity_decode($fm->textShorten($value['body'], 100)); ?></td>
					<td><?php echo $value['price']; ?></td>
					<td class="center"> <img src="<?php echo $value['image']; ?>" height="50" width="70" > </td>
					<td>
						<?php 
						if ($value['type']==0) {
							echo "Featured";
						}else{
							echo "General";
						}

					 	?>	
					 </td>
					<td>
						<a href="productedit.php?editproduct=<?php echo $value['productId']; ?>">Edit</a> || 
						<a href="?delproduct=<?php echo $value['productId']; ?>" onclick="return confirm('Are you sure delete Product');">Delete</a> 
					</td>
					
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
