
mysql -h 10.0.0.2 -u root -p1234567890 bank < bank.sql
exit_status=$?
if [ $exit_status -eq 1 ];
then
	echo "db container is still starting up, restarting config..."
else
	echo "db configuration completed successfully"
fi

exit $exit_status