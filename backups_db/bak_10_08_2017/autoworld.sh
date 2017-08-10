while [ true ]; do
        sleep 1
        echo "Checking World Server"
       
        PS_OUTPUT=$(ps -la | grep worldserver)
 
        if [ ! "$PS_OUTPUT" ];
        then
                echo "World Server is not running, Starting..."
                /home/vagrant/eluna/bin/worldserver
 
        fi;
 
 
done
