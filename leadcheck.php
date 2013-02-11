<?php
require_once('config.php');
global $sugar_config;

/*function getDomain( $inputURL ) {
$arrayURL = explode( '.', $inputURL );
$i = count( $arrayURL ) - 1;
if( strlen( $arrayURL[ $i ] ) <= 2 && strlen( $arrayURL[ $i - 1 ] ) <= 2 ) {
$cleanURL = $arrayURL[ $i - 2 ] . '.' .$arrayURL[ $i - 1 ] . '.' .
$arrayURL[ $i ];
} else {
//$cleanURL = $arrayURL[ $i - 1 ] . '.' . $arrayURL[ $i ];
$cleanURL = $arrayURL[ $i - 1 ] ;
}
return $cleanURL;
}
*/
function getDomain($domainb)
   {
       $bits = explode('/', $domainb);
       if ($bits[0]=='http:' || $bits[0]=='https:')
       {
       $domainb= $bits[2];
       } else {
       $domainb= $bits[0];
       }
       unset($bits);
       $bits = explode('.', $domainb);
       $idz=count($bits);
       $idz-=3;
       if (strlen($bits[($idz+2)])==1) {
           //$url=$bits[$idz].'.'.$bits[($idz+1)].'.'.$bits[($idz+2)];
           $url=$bits[$idz];
       }else if (strlen($bits[($idz+2)])==0) {
           //$url=$bits[($idz)].'.'.$bits[($idz+1)];
           $url=$bits[($idz)];
       } else {
           //$url=$bits[($idz+1)].'.'.$bits[($idz+2)];
           $url=$bits[($idz+1)];
       }
       return $url;
   } //End of Function

//Database Connection
$db =mysql_connect($sugar_config['dbconfig']['db_host_name'],$sugar_config['dbconfig']['db_user_name'],$sugar_config['dbconfig']['db_password'])
or die("Connection to database failed, perhaps the service is down !!");
mysql_select_db($sugar_config['dbconfig']['db_name']) or die("Database name not available !!");

$record_id=trim($_GET[record_id]);
$website=trim(getDomain($_GET['website']));
$status=trim($_GET['status']);
/*$phone_work=trim($_GET['phone_work']);
$string=$phone_work;
$string = preg_replace("/[^a-zA-Z0-9s]/", "", $string);
$string1 = preg_replace("/[a-z]/", "~~~", $string);
$strinPhone = explode("~~~",$string1);

$string = substr($strinPhone[0],strlen($strinPhone[0])-10,10);
*/
$phone_work=trim($_GET['phone_work']);
$phone_work_arr = explode("/",$phone_work);
for($i=0;$i<count($phone_work_arr);$i++){
	$string[] = substr($phone_work_arr[$i],strpos($phone_work_arr[$i],'e')-10,10);
	
}
//SELECT id,website,
//replace(replace(replace(replace(replace(website,'https:///',''),'http://
///',''),'http://',''),'https://',''),'www.','')  web FROM `leads`
if($status=="Edit")
{
           //$sql='create temporary table u
                // select id,phone_work,website from leads where
//phone_work IS NOT NULL';
           $sql="
			SELECT a1.id,
				TRING(website,1,LOCATE('.',website)-1) AS website,
				ACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(a1.phone_work,'', ''),'+',''),'*',''),'.',''),'-',''),'(',''),')',''),' ','') phone_work

			FROM (
				SELECT 
					id,phone_work, REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ) website
				FROM 
					leads 
				WHERE 
					SUBSTRING(REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ),1,LOCATE('.',REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ))-1) = '".$website."' AND id!='".$record_id."' and deleted = 0 

				) a1";

           $result = mysql_query($sql);
           /*$sqlTotal=mysql_query("select * from u");
		   while($row = mysql_fetch_array($sqlTotal)){
		   	echo $row['phone_work']."<br>";
		   }*/
		   //echo "<pre>";
		  // print_r($sqlTotal);
           $totalCount = mysql_num_rows($result);
           
           if($totalCount > 0)
           {
               echo "0";

           }else{
               //Checking Phone Number
			   $res=0;
			   for($j=0;$j<count($string);$j++){
			   	
			  
               $sql="SELECT a1.id,
SUBSTRING(website,1,LOCATE('.',website)-1) AS website,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(a1.phone_work,'', ''),'+',''),'*',''),'.',''),'-',''),'(',''),')',''),' ','') phone_work

FROM (SELECT id,phone_work, REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ) website
FROM leads WHERE REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(phone_work,'', ''),'+',''),'*',''),'.',''),'-',''),'(',''),')',''),' ','') Like '%".$string[$j]."%'  AND id!='".$record_id."' and deleted = 0 
) a1";

           $result = mysql_query($sql);
           /*$sqlTotal=mysql_query("select * from u");
		   while($row = mysql_fetch_array($sqlTotal)){
		   	echo $row['phone_work']."<br>";
		   }*/
		   //echo "<pre>";
		  // print_r($sqlTotal);
           $totalCount = mysql_num_rows($result);
              if($totalCount > 0)
               {
			   		while($row=mysql_fetch_array($result)){
						$phone_work_arr = explode("/",$row['phone_work']);
						for($i=0;$i<count($phone_work_arr);$i++){
					$phon_number = substr($phone_work_arr[$i],strpos($phone_work_arr[$i],'e')-10,10);
							//echo "$phon_number==$string[$j].<br>";
							if($phon_number==$string[$j]){
								 echo $res = "1";
								return true;
							}
						}
					}
                  
				}
               }
			   if($res==0){
			   	echo "0";
			   }
                   
               


           }
}else{

      $sql="SELECT a1.id,
SUBSTRING(website,1,LOCATE('.',website)-1) AS website,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(a1.phone_work,'', ''),'+',''),'*',''),'.',''),'-',''),'(',''),')',''),' ','') phone_work

FROM (SELECT id,phone_work, REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ) website
FROM leads WHERE SUBSTRING(REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ),1,LOCATE('.',REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ))-1) = '".$website."' and deleted = 0 
) a1";

           $result = mysql_query($sql);
           /*$sqlTotal=mysql_query("select * from u");
		   while($row = mysql_fetch_array($sqlTotal)){
		   	echo $row['phone_work']."<br>";
		   }*/
		   //echo "<pre>";
		  // print_r($sqlTotal);
           $totalCount = mysql_num_rows($result);
           
           if($totalCount > 0)
           {
               echo "1";

           }else{
               //Checking Phone Number
			   $res=0;
			   for($j=0;$j<count($string);$j++){
			   	
			  
               $sql="SELECT a1.id,
SUBSTRING(website,1,LOCATE('.',website)-1) AS website,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(a1.phone_work,'', ''),'+',''),'*',''),'.',''),'-',''),'(',''),')',''),' ','') phone_work

FROM (SELECT id,phone_work, REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( REPLACE( website, 'https:///', '' ) ,'http:///', '' ) , 'http://', '' ) , 'https://', '' ) , 'www.', ''),' ','' ) website
FROM leads WHERE REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(phone_work,'', ''),'+',''),'*',''),'.',''),'-',''),'(',''),')',''),' ','') Like '%".$string[$j]."%'  AND deleted = 0 
) a1";

           $result = mysql_query($sql);
           /*$sqlTotal=mysql_query("select * from u");
		   while($row = mysql_fetch_array($sqlTotal)){
		   	echo $row['phone_work']."<br>";
		   }*/
		   //echo "<pre>";
		  // print_r($sqlTotal);
           $totalCount = mysql_num_rows($result);
              if($totalCount > 0)
               {
			   		while($row=mysql_fetch_array($result)){
						$phone_work_arr = explode("/",$row['phone_work']);
						for($i=0;$i<count($phone_work_arr);$i++){
							$phon_number = substr($phone_work_arr[$i],strpos($phone_work_arr[$i],'e')-10,10);
							if($phon_number==$string[$j]){
								 echo $res = "1";
								return true;
							}
						}
					}
                  
				}
               }
			   if($res==0){
			   	echo "0";
			   }
                   
               


           }
}
?>
