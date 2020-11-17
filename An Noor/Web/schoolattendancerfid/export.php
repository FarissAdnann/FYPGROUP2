<?php  
//export.php  
$connect = mysqli_connect("localhost", "root", "", "nodemcu_rfidrc522_mysql");
$output = '';
if(isset($_POST["export"]))
{
 $query = "SELECT * FROM attendance 
           JOIN table_nodemcu_rfidrc522_mysql ON attendance.idstudent = table_nodemcu_rfidrc522_mysql.idstudent
		   ORDER BY name ASC";
 $result = mysqli_query($connect, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         <th>Name</th>  
                         <th>ID</th>  
                         <th>Gender</th>  
                         <th>Class</th>
                         <th>IC Number</th>
						 <th>Date</th>
						 <th>Time</th>
                    </tr>
  ';
  while($row = mysqli_fetch_array($result))
  {
   $output .= '
    <tr>  
                         <td>'.$row["name"].'</td>  
                         <td>'.$row["id"].'</td>  
                         <td>'.$row["gender"].'</td>  
                         <td>'.$row["email"].'</td>  
                         <td>'.$row["mobile"].'</td>
	                     <td>'.$row["date"].'</td> 
	                     <td>'.$row["time"].'</td> 
                    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=report.xls');
  echo $output;
 }
}
?>
