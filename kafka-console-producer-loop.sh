  #!/bin/bash
for i in `seq 1 $1`;
do
        echo 'Publish message [i='$i',topic='$2']'
        echo '[event #'$i']' | kafka-console-producer.sh  --broker-list localhost:9092 --topic $2 --request-required-acks 1
done
