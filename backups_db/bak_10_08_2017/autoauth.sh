while [ true ]; do
        sleep 1
        echo "Checking Auth Server"
       
        PS_OUTPUT=$(ps -la | grep authserver)
 
        if [ ! "$PS_OUTPUT" ];
        then
                echo "Auth Server is not running, Starting..."
                /home/vagrant/eluna/bin/authserver
 
        fi;
 
 
done
