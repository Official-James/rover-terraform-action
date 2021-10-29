FROM im2nguyen/rover:v0.2.2

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh","/entrypoint.sh"]
