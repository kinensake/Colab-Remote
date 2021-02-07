su - Aevuive -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed\n " >&2
    printf "PIN: 123456 " >&2
else
    printf "\n\nError Occured " >&2
fi
