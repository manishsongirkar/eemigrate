#!/bin/bash



# Make Variables Available For Later Use
EEINSTALLLOG=/var/log/eemigrateinstall.log

# Capture Errors
SyncError()
{
	echo -e "[ `date` ] \033[31m $@ \e[0m" | tee -ai $MIGRATELOG
	exit 101
}

echo &>> $EEINSTALLLOG
echo -e "\033[34meemigrate addon Installation Started [$(date)]\e[0m" | tee -ai $EEINSTALLLOG

# Clone eemigrate
echo &>> $EEINSTALLLOG
echo -e "\033[34mCloning eemigrate addon, Please Wait...\e[0m" | tee -ai $EEINSTALLLOG

# Remove Older eemigrate If Found
rm -rf /tmp/eemigrate &>> /dev/null

# Clone eemigrate Repository
git clone git://github.com/manishsongirkar/eemigrate.git /tmp/eemigrate &>> $EEINSTALLLOG || SyncError "Unable To Clone eemigrate"

# Install eemigrate
echo -e "\033[34mInstalling eemigrate addon, Please Wait...\e[0m" | tee -ai $EEINSTALLLOG

# eemigrate /usr/local/sbin/
cp -a /tmp/eemigrate/usr/local/sbin/eemigrate /usr/local/sbin/ &>> $EEINSTALLLOG || SyncError "Unable To Copy Auto Complete File"

# eemigrate /etc/bash_completion.d/
cp -a /tmp/eemigrate/etc/bash_completion.d/eemigrate /etc/bash_completion.d/ &>> $EEINSTALLLOG || SyncError "Unable To Copy eemigrate Command"

# Change Permission For EE
chmod 750 /usr/local/sbin/eemigrate || SyncError "Unable To Change eemigrate Command Permission"

# Source eemigrate Auto Complete To Take Effect
echo
echo -e "\033[34mFor eemigrate Auto Completion Run Following Command\e[0m" | tee -ai $INSTALLLOG
echo -e "\033[37msource /etc/bash_completion.d/eemigrate\e[0m" | tee -ai $INSTALLLOG
echo

# Display Success Message
echo -e "\033[34meemigrate addon Installed Successfully\e[0m" | tee -ai $INSTALLLOG