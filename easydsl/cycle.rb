$:.unshift File.dirname(__FILE__) + '/../lib'
require 'silverplatter/irc/easydsl'

configure do
  set_server "irc.freenode.net"
  set_port "6667"
  set_nickname "len_cycler"
  set_realname "Awesome"
  set_username "toy"
  # set_owner "lenary"
  set_ping_interval 125
  set_reconnect_delay 2

  set_nick_error_block do

  end

  set_disconnect_block do

  end
end

begin

  join "#butler-bot" do
    privmsg "Hi!"
  end

  sleep 3
rescue Interrupt
  @connection.quit("fun over")
  sleep 3
end