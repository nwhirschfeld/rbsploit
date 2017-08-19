#!/usr/bin/env ruby

=begin

    This example connects to a bind shell, runs ls as a payload and jumps in a interactive shell.

    Local bind shell for this example:
    # nc -lvp 4444 -e /bin/sh

=end

require 'rbsploit'

host = TCPHost.new 'localhost', 4444

host.puts "ls"

host.shell.join

host.close
