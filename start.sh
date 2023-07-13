JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64/" # int this case we use JAVA 17

while true
do
        $JAVA_HOME/bin/java -server -Xms1G -Xmx1G -jar executable-name.jar
        echo "If you want to restart : Press CTRL+C before time is done"
        echo "Restarting in :"
        for i in 5 4 3 2 1
        do
                echo "$i..."
                sleep 1
        done
        echo "Restarting !"
done