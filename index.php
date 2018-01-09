<?php
    include_once('lib/DataProvider.php');
?>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-type" content="text/html; charset=UTF-8"/>
            <title> Lap Trinh Web</title>
            <link rel = "stylesheet" href = "./css/style.css"/>

    </head>
    <body>
        <?php include_once("modules/mHeader.php");  ?>
        <div id="container">
            
                    <div id = "menu">
                        <?php include_once("modules/mMenu.php"); ?>
            
                        <?php include_once("modules/mBanner.php"); ?>
                
                        <?php include_once("modules/mContent.php"); ?>
                
                        
            
                    </div>
        </div>
        <?php include_once("modules/mFooter.php"); ?>
        
    </body>
</html>