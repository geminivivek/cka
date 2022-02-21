for i in control01.lab.local control02.lab.local control03.lab.local worker01.lab.local worker02.lab.local
do
	ssh $i sudo shutdown now
done
