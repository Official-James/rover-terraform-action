FROM im2nguyen/rover:v0.3.3

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh","/entrypoint.sh"]
