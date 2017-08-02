<?php

if(isset($_GET['idimage']))
{
 $id = $_GET['idimage'];

 require_once 'dbconfig.php';



$sql = $conn->prepare("select * from images where id=:id");
$sql->bindparam(':id', $id);
$sql->execute();



}



 	while($result = $sql->fetch(PDO::FETCH_ASSOC)){ 
          

?>

<?php include 'head.html'; ?>

<div class="row">
               <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="<?php echo $result['userfile'];?>" />
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                   
                    <h3><?php echo $result['id'];?></h3>    
                    <h5 style="color:#337ab7"> <?php echo $result['product_id'];?></h5>
        
                    <!-- Precios -->
                    <h6 class="title-price"><small> <?php echo $result['created_at'];?></small></h6>
                    <h3 style="margin-top:0px;"><?php echo $result['updated_at'];?></h3>        
                                         
                </div>                              
        
          	
            </div>
            


<?php
}


?>
<?php include 'footer.html'; ?>+