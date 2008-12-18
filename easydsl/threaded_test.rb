$:.unshift File.dirname(__FILE__) + '/../lib'
require 'silverplatter/irc/easydsl'

configure do
  set_server "irc.freenode.net"
  set_port "6667"
  set_nickname "easydsl"
  set_realname "Awesome"
  set_username "toy"
  # set_owner "lenary"
  # set_ping_interval 5
  set_reconnect_delay 2

  set_nick_error_block do

  end

  set_disconnect_block do

  end
end

begin

  Thread.new do
    join "#butler-bot" do
      privmsg "HI!"
      privmsg "WOO!"
      sleep 1000
    end
  end

  Thread.new do
    join "#butler" do
      privmsg "Another HI!"
      sleep 1000
    end
  end

  # on_join do
  #   @connection.send_privmsg "Hi #{nick}!", channel
  # end

  sleep
rescue Interrupt
  @connection.quit("fun over")
  sleep 3
end