all: filter

filter: filter.c
	gcc -o filter filter.c

exec: filter
	(cat /proc/uptime ; sleep 2; cat /proc/uptime) | ./filter

clean:
	rm *.o
