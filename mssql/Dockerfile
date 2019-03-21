# Name of pulled docker image.
FROM microsoft/mssql-server-linux

# You agree that your use of SQL Server software running in a Docker container image will be governed
# by the terms of your SQL Server license.
ENV ACCEPT_EULA=Y

# Set the password for buildin MSSQL user "sa".
ENV SA_PASSWORD="VleDh23byUB%"

# Copy database to docker container.
COPY BS1Context.bak /var/opt/mssql/BS1Context.bak

# Restore database
# Step 1: runs the command that inside the container to wait till mssql service is running.
#HEALTHCHECK --interval=10s CMD opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "VleDh23byUB" -Q "RESTORE DATABASE BS1Context FROM DISK='/var/opt/mssql/BS1Context.bak' WITH MOVE 'BS1Context' TO '/var/opt/mssql/data/BS1Context.MDF', MOVE 'BS1Context log' TO '/var/opt/mssql/data/BS1Context.ldf'"
HEALTHCHECK --interval=10s CMD opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P VleDh23byUB% -Q "RESTORE DATABASE BS1Context FROM DISK='/var/opt/mssql/BS1Context.bak' WITH MOVE 'BS1Context' TO '/var/opt/mssql/data/BS1Context.MDF', MOVE 'BS1Context_log' TO '/var/opt/mssql/data/BS1Context.ldf'"
# bin/bash -c "/opt/mssql/bin/sqlservr && sleep 30s && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P VleDh23byUB -Q "RESTORE DATABASE BS1Context FROM DISK='/var/opt/mssql/BS1Context.bak' WITH MOVE 'BS1Context' TO '/var/opt/mssql/data/BS1Context.MDF', MOVE 'BS1Context_log' TO '/var/opt/mssql/data/BS1Context.ldf'""
#bin/bash -c "/opt/mssql/bin/sqlservr && sleep 30s && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P VleDh23byUB -Q "RESTORE DATABASE BS1Context FROM DISK = '/var/opt/mssql/BS1Context.bak' WITH MOVE 'BS1Context' TO '/var/opt/mssql/data/BS1Context.MDF', MOVE 'BS1Context_log' TO '/var/opt/mssql/data/BS1Context.ldf'""




##ConnectionStrings     "Server=mysql;Database=bookstorev8Context;User Id=sa;Password=VleDh%)yUB"
