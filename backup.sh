#!/bin/bash
# Backups
backup_dir="/home/neco11/bd/backup/"
# Fecha y hora para el backup
backup_date=`date +%d-%m-%Y_%H:%M`
#BD que se respladará
bd="musicdb"
echo Realizando Backup de la base de datos $bd a $backup_dir$bd\_$backup_date.backup
pg_dump -Fc musicdb > $backup_dir$bd\_$backup_date.backup

