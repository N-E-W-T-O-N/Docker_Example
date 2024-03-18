

docker run -it -v ${PWD}/SqliteData:/data -w /data --name sqlite-container keinos/sqlite3:latest sqlite3 patronas.db

docker run -it -v "$(PWD):/database" -w /database keinos/sqlite3:latest sqlite3 your.db
docker run -it -v "$(PWD):/database" -w /database keinos/sqlite3:latest sqlite3 chinook.db

Dont use interactive and detach simlutaniously

Better to install in a ubuntu image and add bin as entry point