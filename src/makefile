
# activemq
build-image:
	sudo docker build ./activemq/ -t activemq:5.15.11
	sudo docker save activemq:5.15.11 -o ./activemq/activemq-image.tar.gz

load:
	sudo docker load --input activemq/activemq-image.tar.gz
# 	sudo docker load --input LINKS/converter/5gmeta_msg-converter_latest.tar.gz
# 	sudo docker load --input LINKS/clients/5gmeta_amqp-publisher_latest.tar.gz 
# 	sudo docker load --input LINKS/clients/5gmeta_amqp-subscriber_latest.tar.gz 

upload-registry:
	sudo docker tag activemq:5.15.11 5gmeta/message-broker:5.15.11.5gmetav1.0
	sudo docker tag activemq:5.15.11 5gmeta/message-broker:latest
	sudo docker push 5gmeta/message-broker:5.15.11.5gmetav1.0
	sudo docker push 5gmeta/message-broker:latest

clean:
# 	sudo docker image rmi 5gmeta/msg-converter
# 	sudo docker image rmi 5gmeta/amqp-publisher 
# 	sudo docker image rmi 5gmeta/amqp-subscriber 
	sudo docker image rmi -f activemq:5.15.11
# 	 sudo docker rm 5gmeta-connector-image  

stop:
	sudo docker-compose down

run:
	sudo docker-compose up -d


# run-links-publisher:
# 	sudo docker run --network bridge -v $(pwd)/clients/config_pub.json,/app/config_pub.json -it 5gmeta/amqp-publisher:latest 

build:
# 	sudo docker build ./connector -t 5gmeta-connector-image
	sudo docker-compose build
