FROM camptocamp/kafka-rancher:0.10.1

COPY target/kafka-connect-elasticsearch-3.1.0.jar /kafka/libs/
COPY config/connect-distributed.properties /kafka/config/

ENTRYPOINT ["/kafka/bin/connect-distributed.sh", "/kafka/config/connect-distributed.properties"]
