<?php

require_once 'dbconfig.php';



$sql = $conn->prepare("select * from images ORDER BY id ASC");
$sql->execute();


?>

<?php include 'head.html'; ?>

            <h1>Images</h1>
                        <table id="showimage" class="table table-striped table-bordered" cellspacing="0" width="90%">    			       
						    <thead>
						        <tr>
						            <th>ID</th>
						            <th>Product ID</th>
						            <th>User File</th>
						            <th>Created</th>
						            <th>Updated </th>
						            <th>status </th>
						        </tr>
						    </thead>
						    <tbody>
						   		<?php 	while($result = $sql->fetch(PDO::FETCH_ASSOC)){ ?>
						            <tr>
									     <td><?php echo $result['id'];?></td>
										 <td><?php echo $result['product_id'];?></td>
										 <td><?php echo $result['userfile'];?></td>
										 <td><?php echo $result['created_at'];?></td>
										 <td><?php echo $result['updated_at'];?></td>
										 <td><?php echo $result['status_id'];?></td>
						            </tr>
						       <?php } ?>
						    </tbody>
						</table>

<?php include 'footer.html'; ?>

