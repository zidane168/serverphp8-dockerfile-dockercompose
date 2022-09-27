<?php
echo "Welcome to LearnTechTips blogspot" . "<br />";
echo "I am Zidane" .   "<br />";
echo "This topic is show you how to build and run dockerfile and docker-compose file for PHP8".  "<br />";
?>

<style>
    .blueviolet {
        color: blueviolet;
    }

    .bold {
        font-weight: bold;
    }
</style>
<div> Below useful command: </div> 

<div> Build dockerfile: <span class="blueviolet bold"> docker build . -t serverphp8 </span></div> 
<div> Update dockercompose: <span class="blueviolet bold"> docker-compose --compatibility up -d --force-recreate </span></div> 