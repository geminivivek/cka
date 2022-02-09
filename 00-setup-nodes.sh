for i in worker-01 worker-02 worker-03
do
	scp * $i:~
done
