<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php
  $filepath= realpath(dirname(__FILE__));
   include_once($filepath.'/../helper/Format.php'); 
   include_once($filepath.'/../classes/Cart.php');
   include_once($filepath.'/../classes/Product.php');
   $fm = new Format();
   $ct = new Cart(); 
   $pd = new Product();	
?>
<?php
	if (isset($_GET['Shiftid'])) {
		$id    = $_GET['Shiftid'];
		$productshift = $ct->ShiftedProduct($id);
	}
?>
<?php 
	if (isset($_GET['delid'])) {
		$orderDel = $_GET['delid'];
		$delOrder = $pd->delOrderProduct($orderDel);
	}
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Order List</h2>
                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Id.</th>
							<th>Order Time</th>
							<th>Product</th>
							<th>Qunatity</th>
							<th>Price</th>
							<th>Cmr Id</th>
							<th>Address</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php 
							$orderproduct=$ct->getAllproduct();
							if($orderproduct){
								while ($value = $orderproduct->fetch_assoc()) { ?>
									

						<tr class="odd gradeX">
							<td><?php echo $value["id"]; ?></td>
							<td><?php echo $fm->formatDate($value["date"]); ?></td>
							<td><?php echo $value["productName"]; ?></td>
							<td><?php echo $value["quantity"]; ?></td>
							<td><?php echo $value["price"]; ?></td>
							<td><?php echo $value["cmrId"]; ?></td>
							<td>
								<a href="customer.php?customerid=<?php echo $value['cmrId']; ?>" >View Detalis</a></td>

							<?php if($value["status"]==0){ ?>
								<td><a href="?Shiftid=<?php echo $value['id']; ?>"> Shifted</a></td>
							<?php } else{?>
								<td><a href="?delid=<?php echo $value['id']; ?>" > Remove</a></td>

							<?php }?> 
							
							
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
