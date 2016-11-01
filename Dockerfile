FROM camptocamp/kafka-rancher:0.10.1

COPY target/kafka-connect-elasticsearch-3.1.0.jar /kafka/libs/
COPY config/connect-distributed.properties /kafka/config/
COPY config/connect-elasticsearch.properties /kafka/config/

ENTRYPOINT ["/kafka/bin/connect-standalone.sh", "/kafka/config/connect-distributed.properties", "/kafka/config/connect-elasticsearch.properties"]
