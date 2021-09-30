echo "${_group}Creating volumes for persistent storage ..."

mkdir -p ${VOL_PATH}/sentry-clickhouse ${VOL_PATH}/sentry-data ${VOL_PATH}/sentry-kafka ${VOL_PATH}/sentry-postgres ${VOL_PATH}/sentry-redis ${VOL_PATH}/sentry-symbolicator ${VOL_PATH}/sentry-zookeeper

echo "Created $(docker volume create --name=sentry-clickhouse --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-clickhouse)."
echo "Created $(docker volume create --name=sentry-data --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-data)."
echo "Created $(docker volume create --name=sentry-kafka --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-kafka)."
echo "Created $(docker volume create --name=sentry-postgres --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-postgres)."
echo "Created $(docker volume create --name=sentry-redis --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-redis)."
echo "Created $(docker volume create --name=sentry-symbolicator --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-symbolicator)."
echo "Created $(docker volume create --name=sentry-zookeeper --driver=local --opt=type=none --opt=o=bind --opt=device=${VOL_PATH}/sentry-zookeeper)."

echo "${_endgroup}"
