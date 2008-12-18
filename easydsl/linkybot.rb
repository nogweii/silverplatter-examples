$:.unshift File.dirname(__FILE__) + '/../lib'
require 'silverplatter/irc/easydsl'

configure do
  set_server "irc.freenode.net"
  set_port "6667"
  set_nickname "link_butler"
  set_realname "Butler Assistant"
  set_username "butler"
  set_reconnect_delay 2
end

begin

  join "#butler" do
    # Nothing
  end
  
  on_privmsg_match /#(\d+)/ do |message|
    in_context_of message.channel do
      privmsg "http://silverplatter.sr.brightlight.ch/issues/show/#{message[:match][1]}"
    end
  end
  
  sleep
rescue Interrupt
  @connection.quit("fun over")
  sleep 3
end