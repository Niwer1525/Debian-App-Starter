# Debian-App-Starter
A simple auto-restartable script to execute applications on Linux.

-> You can make the script start on Linux booting with crontab and screen. Follow step under !

# Setup screen
Install ```sudo apt-get install screen```

# Setup crontab
Install : ```sudo apt-get install cron ```
 
Then run : ```crontab -e```

At the end of the file add ```@reboot cd /path/to/appllication && screen -dmS servername /path/to/start.sh```

# Next step ?
Don't forget to configure the script itself !
Change the java command : ```$JAVA_HOME/bin/java -server -Xms1G -Xmx1G -jar executable-name.jar```
And the Java home path : ```JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64/"```

# How to access to the console ?
You can access to your program console by using ```screen -r NAME_OF_YOUR_SCREEN``` And sure you can list all screens by using ```screen -ls```
