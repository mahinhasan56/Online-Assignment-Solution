  <html>
    <head>
    <title>My first PHP website</title>
    </head>
    <body>
     <div align ="center">
    <h1>Registration Page</h1>
        </div>
    <form action="index.php" method="POST">
    <div align ="center">
    Enter Name: <input type="text" name="name" required="required"/> <br/><br/>

    Enter Firstname: <input type="text" name="fname" required="required" /> <br/><br/>
    Enter SID: <input type="text" name="sid" required="required"/> <br/><br/>

    Enter Email: <input type="text" name="email" required="required"/> <br/><br/>
          <br/>
        <br/>
        <br/>
        <br/>
        <strong><h2>Select Your Practical Slot:</h2></strong>
         <br/> <br/>
      
        <select name="gr">
        <option value ="A"> monday    10:30-12.30 &nbsp;     </option>  <br/>
        <option value ="B "> tuesday   12:30-2.30    &nbsp;  </option>  <br/>
        <option value ="C"> friday    2:30-4.30       &nbsp; </option> <br/>
        <option value ="D"> Saturday   4:30-2.30    &nbsp;   </option>  <br/>
        </select>
        <br/>
        <br/>

    <input type="submit" name="submit" />
     <input type="reset" />
    </div>
    </form>
    </body>
    </html>

    <?php
     session_start();
    if(isset($_POST["submit"])){


    //    
    // echo "i am happy"; exit();   
    $name = mysql_real_escape_string($_POST['name']);

    $fname= mysql_real_escape_string($_POST['fname']);

    $sid= mysql_real_escape_string($_POST['sid']);

    $email= mysql_real_escape_string($_POST['email']);

    $gr= mysql_real_escape_string($_POST['gr']);

    mysql_connect("localhost", "root","") or die(mysql_error()); //Connect to server
    mysql_select_db("martin") or die("Cannot connect to database"); //Connect to database


        $query = mysql_query("Select * from users"); //Query the users table
        $exists = mysql_num_rows($query); //Checks if username exists

    $total=32;
    $Fillup=0;    

    
    if($exists>32){
        Print '<script>alert("No Registration is Posssible now ");</script>';
    }    

    if (($exists>0)&& ($exists<=32))
    {
        while($row = mysql_fetch_array($query)) //display all rows from query
        {
            $table_users = $row['sid'];
        }
        if($sid == $table_users) // checks if there are any matching fields
        {
               Print '<script>alert("You should change your section!");</script>'; //Prompts the user
               $_SESSION['user']=$sid;

 

        }else{
       
             /*  execute the query  */ 
            
                
            
                  mysql_query("INSERT INTO users VALUES ('$name ',' $fname  ',' $sid ',' $email ',' $gr ')"); 
                  $_SESSION['user']=$sid;
                
                Print '<script>alert("Successfully!");</script>';
       
                 $Fillup++;
                 $remainning=$total-$Fillup;
   
                echo  "Name:  $name<br/>   ",
                "First Name:  $fname<br/>   ",
                "SID:  $sid<br/>   ",
                "Email:  $email<br/>   ",
                "Slot:  $gr<br/> ",  
                "Remainning:  $remainning<br/> ";   
             
        }
    }
    else // 
    {
      
    mysql_query("INSERT INTO users VALUES ('$name ',' $fname  ',' $sid ',' $email ',' $gr ')"); 

   // $_SESSION['user']=$sid;
    Print '<script>alert("Successfully Registered!");</script>'; // Prompts the user
      
       
    }

    }
?>

