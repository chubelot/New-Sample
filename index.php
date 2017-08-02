<?php

require_once 'dbconfig.php';



$sql = $conn->prepare("select * from invoices ORDER BY id ASC");
$sql->execute();


?>

<?php include 'head.html'; ?>
<div class="row">
            <div class="col-lg-12 text-center">

            <h1>Transaction</h1>
            <table id="showtable" class="table table-striped table-bordered" cellspacing="0" width="90%">    

						    <thead>
						        <tr>
						            <th>Id</th>
						            <th>Store ID</th>
						            <th>Order ID</th>
						            <th>Balance Amount</th>						           
						            <th>Paid Date</th>
						            <th>Disclamer</th>
						            <th>Created Date</th>			
						            <th>View</th>
						        </tr>
						    </thead>
						    <tbody>
						   		<?php 	while($result = $sql->fetch(PDO::FETCH_ASSOC)){ ?>
						            <tr>
									     <td><?php echo $result['Id'];?></td>
										 <td><?php echo $result['storeId'];?></td>
										 <td><?php echo $result['orderId'];?></td>
										 <td><?php echo $result['BalanceAmount'];?></td>
										 <td><?php echo $result['paidDateUtc'];?></td>
										 <td><?php echo $result['disclamer'];?></td>
										 <td><?php echo $result['created_at'];?></td>
										 <td align="center">
                							<a href="processimage.php?idimage=<?php print($result['imageid']); ?>"><?php echo $result['imageid'];?></a>
                						</td>

						            </tr>
						       <?php } ?>
						    </tbody>
						</table>
				</div>
        		</div>

<?php include 'footer.html'; ?>
