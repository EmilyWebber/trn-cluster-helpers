# Helper commands
This is just a list of some really useful commands for working with Trainium clusters.

### Screen
This is a super useful Linux tool you can use to run programs in the backgound. That means you can exit the SSH session, while your script continues to run. You can close your laptop while the program runs, meaning you can compile programs and shard models overnight.

`screen` - This just starts a new screen session

`ctl a d` - This disconnects from the screen session, and gives you the name of the screen session

`screen ls` - Use this to see if you have any screens in progress and take their program id's

`screen -r <id>` - This resumes the screen based on the program id

`exit` - This exits a screen session and kills it


### Long job runner
This command lets you start a long-running job and output the logs of that job both to the terminal bash for you to see it during your session, and to the log file you define here. I use this for most bigger compile or sharding runs.

`SomeCommand 2>&1 | tee SomeFile.txt`
 
