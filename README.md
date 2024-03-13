# Message Data Broker
This repositoty contains:

- A Message Broker to be deployed in the MEC, which is ActiveMQ (src/)
- An example of sender and receive in python (examples/activemq_clients)

The instruction to build the ActiveMQ source code are available into the REDME in src/ (a Make file with the commands is available).

## Development instructions

Message Broker can be found in src/ folder
* sudo docker-compose up -d
* open http://<ip>:8161
    * manage ActiveMQ broker
    * admin/admin
    * you can see created topics



## Examples 
Have a look at the folder with the examples to run the senders:

- cits_sender_python: a python sender and receiver that run an AMQP sender simulating a number of vehicles that send messages with some properties attached.
    - pip dependencies
    - python-qpid-proton
- image_sender_python: a python sender and receiver that run an AMQP sender simulating a number of vehicle that sends images (different size, but all the same)

Look at the examples README for more details.

- cits_receiver_python: a python example to receive messages from AMQP events


* python3 sender.py -a amqp://user:password@<your_ip>:5673/topic://cits


## License

Copyright : Copyright 2022 VICOMTECH

License : EUPL 1.2 ([https://eupl.eu/1.2/en/](https://eupl.eu/1.2/en/))

The European Union Public Licence (EUPL) is a copyleft free/open source software license created on the initiative of and approved by the European Commission in 23 official languages of the European Union.

Licensed under the EUPL License, Version 1.2 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at [https://eupl.eu/1.2/en/](https://eupl.eu/1.2/en/)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
