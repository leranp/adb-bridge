FROM sorccu/adb

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

CMD ["/root/start.sh"]
