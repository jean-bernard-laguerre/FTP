#!/bin/bash

csv_file=$1

while IFS=, read -r  id Prenom Nom Mdp Role
do
   sudo useradd -m -p $Mdp $Prenom-$Nom
   mkdir home/$Prenom-$Nom
   chown $Prenom-$Nom home/$Prenom-$Nom
   
   if [ $Role = "Admin" ]
   then
      sudo usermod -aG sudo $Prenom-$Nom
   fi
done < <(tail -n +2 $csv_file)
