# celeryMan.sh

alias cl="clear"
alias su="sublime"
alias cm="/usr/local/bin/charm"
alias br="s /Users/user/.bash_profile"
alias sb="source /Users/user/.bash_profile"
alias ch="open /Applications/Google\ Chrome.app"
alias da="deactivate"
alias sba="source bin/activate"
alias please="sudo"

identityGen()
{
	DATE=$(date +%Y-%m-%d)

	cd ~
	echo Cinco Identity Generator 2.5
	echo Enter your name:
	read celeryMan
	echo please wait...
	echo Good morning $celeryMan. &
	say Good morning $celeryMan
	echo What will your first sequence of the day be\?
	read sequence
	echo Yes, $celeryMan. &
	say Yes, $celeryMan
	echo Loading $sequence, please wait...
	afplay /audio/celeryManShort.mov &
	
	if [ "$sequence" = "email" ]
	then
		cd Code/Email/
		virtualenv $DATE/
		cd $DATE/
		source bin/activate
		git clone "https://github.com/sweaterguys/Email.git"
		cm /Email
		# or su /Email;
		ls
	elif [ "$sequence" = "rapgod" ]
	then
		cd Code/Research/
		virtualenv $DATE/
		cd $DATE/
		source bin/activate
		git clone "https://github.com/sweaterguys/RapGod.git"
		cm /RapGod
		ls
	elif [ "$sequence" = "research" ]
	then
		cd Code/Research/
		virtualenv $DATE/
		cd $DATE/
		source bin/activate
		git init
		cm
	else
	    cd Code/
	    virtualenv $DATE/
	    cd $DATE/
	    source bin/activate
	    cm
	fi

	echo Would you like to open Slack and Gmail\? &
	say Would you like to open Slack and Gmail\?
	read answer
	if [ "$answer" = "yes" ] || [ "$answer" = "y" ]
	then
	     ch https://slack.com/ &
	     ch https://mail.google.com/mail/u/0/#inbox
	else
	    echo Sorry, $celeryMan.
	fi
}


echo Would you like to load up Celery Man\?
say Would you like to load up Celery Man\?
read response
if [ "$response" = "yes" ] || [ "$response" = "y" ]
then
     identityGen
else
    echo Sorry.
fi
