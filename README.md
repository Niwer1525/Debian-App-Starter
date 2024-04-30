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
- Change the java command : ```$JAVA_HOME/bin/java -server -Xms1G -Xmx1G -jar executable-name.jar```. You can change the min/max ram and add more JVM args. You can also add arguments relative to your app (E.G : `nogui` for MC server
  1. Xms is the min RAM that the app can use
  2. Xmx is the max RAM that the app can use
  According to : https://docs.oracle.com/cd/E13150_01/jrockit_jvm/jrockit/jrdocs/refman/optionX.html

   ![image](https://github.com/Niwer1525/Debian-App-Starter/assets/115033174/7c8ac433-99a8-4251-a0f8-eec7a47a9794)
   ![image](https://github.com/Niwer1525/Debian-App-Starter/assets/115033174/e6903c38-9d41-4fc3-8ff5-e4e73fe98bc7)


- Change the Java home path : ```JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64/"```

# How to access to the console ?
You can access to your program console by using ```screen -r NAME_OF_YOUR_SCREEN``` And sure you can list all screens by using ```screen -ls```

# Common issues
- Corntab not working :
  1. Check the services status : ```sudo service cron status```
  2. Reload the services : ```sudo service cron reload``` (You can also start the services using : ```sudo service cron start```)
