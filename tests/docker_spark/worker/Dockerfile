FROM bitnami/python:3.9 as build
FROM bitnami/spark:3.2.1


COPY --from=build /opt/bitnami/python/ /opt/bitnami/python/
USER root
RUN mkdir /app
RUN chown -R 1000:1000 /app
# RUN pip3 install pyspark==3.2.1
# RUN curl https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-spark_2.11/2.4.5/elasticsearch-spark_2.11-2.4.5.jar --output /opt/bitnami/spark/jars/elasticsearch-spark_2.11-2.4.5.jar
# RUN curl -O https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-hadoop/7.6.1/elasticsearch-hadoop-7.6.1.jar --output /opt/bitnami/spark/jars/elasticsearch-hadoop-7.6.1.jar
# RUN curl -O https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.1009/aws-java-sdk-bundle-1.11.1009.jar

# RUN curl -O https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-hadoop/8.1.1/elasticsearch-hadoop-8.1.1.jar --output /opt/bitnami/spark/jars/elasticsearch-hadoop-8.1.1.jar

# COPY ./tests/master/spark-defaults.conf /opt/bitnami/spark/conf/spark-defaults.conf
ENV SPARK_MODE=worker
ENV SPARK_MASTER_URL=spark://spark-master:7077
ENV SPARK_WORKER_MEMORY=5g
ENV SPARK_WORKER_CORES=4
ENV SPARK_RPC_AUTHENTICATION_ENABLED=no
ENV SPARK_RPC_ENCRYPTION_ENABLED=no
ENV SPARK_LOCAL_STORAGE_ENCRYPTION_ENABLED=no
ENV SPARK_SSL_ENABLED=no