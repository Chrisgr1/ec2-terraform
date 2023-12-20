EC2 running
docker-compose up
flask app fails 


Creating myapp_application_1 ... done
Creating myapp_database_1    ... done
Attaching to myapp_database_1, myapp_application_1
database_1     | The files belonging to this database system will be owned by user "postgres".
database_1     | This user must also own the server process.
database_1     | 
database_1     | The database cluster will be initialized with locale "en_US.utf8".
database_1     | The default database encoding has accordingly been set to "UTF8".
database_1     | The default text search configuration will be set to "english".
database_1     | 
database_1     | Data page checksums are disabled.
database_1     | 
database_1     | fixing permissions on existing directory /var/lib/postgresql/data/PGDATA ... ok
database_1     | creating subdirectories ... ok
database_1     | selecting dynamic shared memory implementation ... posix
database_1     | selecting default max_connections ... 100
database_1     | selecting default shared_buffers ... 128MB
database_1     | selecting default time zone ... Etc/UTC
database_1     | creating configuration files ... ok
application_1  |  * Tip: There are .env or .flaskenv files present. Do "pip install python-dotenv" to use them.
application_1  | Usage: flask run [OPTIONS]
application_1  | Try 'flask run --help' for help.
application_1  | 
application_1  | Error: While importing 'app', an ImportError was raised:
application_1  | 
application_1  | Traceback (most recent call last):
application_1  |   File "/usr/local/lib/python3.12/site-packages/flask/cli.py", line 219, in locate_app
application_1  |     __import__(module_name)
application_1  |   File "/app/app.py", line 3, in <module>
application_1  |     from controllers.country_controller import countries_blueprint
application_1  | ModuleNotFoundError: No module named 'controllers'
application_1  | 
database_1     | running bootstrap script ... ok
myapp_application_1 exited with code 2
database_1     | performing post-bootstrap initialization ... ok
database_1     | syncing data to disk ... ok
database_1     | 
database_1     | initdb: warning: enabling "trust" authentication for local connections
database_1     | initdb: hint: You can change this by editing pg_hba.conf or using the option -A, or --auth-local and --auth-host, the next time you run initdb.
database_1     | 
database_1     | Success. You can now start the database server using:
database_1     | 
database_1     |     pg_ctl -D /var/lib/postgresql/data/PGDATA -l logfile start
database_1     | 
database_1     | waiting for server to start....2023-12-20 15:41:39.428 UTC [47] LOG:  starting PostgreSQL 16.1 (Debian 16.1-1.pgdg120+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 12.2.0-14) 12.2.0, 64-bit
database_1     | 2023-12-20 15:41:39.431 UTC [47] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
database_1     | 2023-12-20 15:41:39.439 UTC [50] LOG:  database system was shut down at 2023-12-20 15:41:39 UTC
database_1     | 2023-12-20 15:41:39.446 UTC [47] LOG:  database system is ready to accept connections
database_1     |  done
database_1     | server started
database_1     | CREATE DATABASE
database_1     | 
database_1     | 
database_1     | /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/1-init.sql
database_1     | psql:/docker-entrypoint-initdb.d/1-init.sql:1: NOTICE:  table "cities" does not exist, skipping
database_1     | DROP TABLE
database_1     | psql:/docker-entrypoint-initdb.d/1-init.sql:2: NOTICE:  table "countries" does not exist, skipping
database_1     | DROP TABLE
database_1     | CREATE TABLE
database_1     | CREATE TABLE
database_1     | 
database_1     | 
database_1     | /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/2-data.sql
database_1     | INSERT 0 1
database_1     | INSERT 0 1
database_1     | INSERT 0 1
database_1     | INSERT 0 1
database_1     | INSERT 0 1
database_1     | 
database_1     | 
database_1     | 2023-12-20 15:41:39.854 UTC [47] LOG:  received fast shutdown request
database_1     | waiting for server to shut down....2023-12-20 15:41:39.856 UTC [47] LOG:  aborting any active transactions
database_1     | 2023-12-20 15:41:39.861 UTC [47] LOG:  background worker "logical replication launcher" (PID 53) exited with exit code 1
database_1     | 2023-12-20 15:41:39.862 UTC [48] LOG:  shutting down
database_1     | 2023-12-20 15:41:39.865 UTC [48] LOG:  checkpoint starting: shutdown immediate
database_1     | 2023-12-20 15:41:39.943 UTC [48] LOG:  checkpoint complete: wrote 943 buffers (5.8%); 0 WAL file(s) added, 0 removed, 0 recycled; write=0.063 s, sync=0.007 s, total=0.081 s; sync files=311, longest=0.003 s, average=0.001 s; distance=4309 kB, estimate=4309 kB; lsn=0/191FEE0, redo lsn=0/191FEE0
database_1     | 2023-12-20 15:41:39.949 UTC [47] LOG:  database system is shut down
database_1     |  done
database_1     | server stopped
database_1     | 
database_1     | PostgreSQL init process complete; ready for start up.
database_1     | 
database_1     | 2023-12-20 15:41:39.989 UTC [1] LOG:  starting PostgreSQL 16.1 (Debian 16.1-1.pgdg120+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 12.2.0-14) 12.2.0, 64-bit
database_1     | 2023-12-20 15:41:39.991 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
database_1     | 2023-12-20 15:41:39.991 UTC [1] LOG:  listening on IPv6 address "::", port 5432
database_1     | 2023-12-20 15:41:39.996 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
database_1     | 2023-12-20 15:41:40.004 UTC [67] LOG:  database system was shut down at 2023-12-20 15:41:39 UTC
database_1     | 2023-12-20 15:41:40.012 UTC [1] LOG:  database system is ready to accept connections
^CGracefully stopping... (press Ctrl+C again to force)
Stopping myapp_database_1    ... done