<p align=center>
    <img width='20%' src='https://images-na.ssl-images-amazon.com/images/I/51i7bJ0NRLL._SX385_BO1,204,203,200_.jpg' />
<p/>

## learning-sql-container
> A Docker container for Alan Beaulieu's wonderful book [Learning SQL](https://www.amazon.com/Learning-SQL-Master-Fundamentals/dp/0596520832). Includes ```bank``` database which is used throughout the book.

### usage
---
```
# give necessary permissions for .sh file
chmod +x init.sh

# build images and start containers
./init.sh up [-d/&]

# stop containers
./init.sh stop

# start container (if stopped)
# you only need to start learningsql-db since config container is only used
# for configuration purposes at build time, but it is your choice
docker container start learningsql-db
 or
./init.sh start

# connect to Mysql server inside container
docker container exec -it learningsql-db mysql -u root -p1234567890 bank
```