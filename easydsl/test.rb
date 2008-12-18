$:.unshift File.dirname(__FILE__) + '/../lib'
require 'silverplatter/irc/easydsl'

configure do
  set_server "irc.freenode.net"
  set_port "6667"
  set_nickname "len_easydsl"
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

  on_join do |msg|
    puts msg.to_hash.inspect
  end
  
  on_part do |msg|
    puts msg.to_hash.inspect
  end
  
  on_topic_change do |msg|
    puts msg.to_hash.inspect
  end
  
  on_privmsg do |msg|
    puts msg.to_hash.inspect
  end
  
  
  
#  on_raw do
#    puts @message.inspect
#    puts @listener.inspect
#  end
  
  sleep
rescue Interrupt
  @connection.quit("fun over")
  sleep 3
end