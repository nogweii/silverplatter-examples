EasyDSL Examples
================

### Note:
In the top of every file should be the following:
`$:.unshift File.dirname(__FILE__) + '/../lib'`

cycle.rb
--------
This is a simple bot that just joins and then leaves a channel so that we can test some handlers on the other bots. Clever eh?

linkybot.rb
-----------
This is a bot that expands different regexp matches into easy to use links. It is currently in use under the name of `link_butler` in [#butler on freenode.net](irc://irc.freenode.net/butler)

test.rb
-------
This bot actually changes a lot, and is the principal development bot for EasyDSL. I won't commit every change as there are so many :/

threaded_test.rb
----------------
This bot tests threads. I myself haven't actually tested it, so i accept no liability for whether it works or not. I've just kept it knowing i'll need it.