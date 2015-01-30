To run
------

    docker run -p 8888:8888 -p 5060:5060/udp -p 5038:5038 -v $(pwd):/etc/asterisk -it quintana/asterisk bash
    asterisk -c
