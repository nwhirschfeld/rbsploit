require "socket"

class TCPHost < TCPSocket
    def shell
        x = self
        thr = Thread.new do
            while l = $stdin.gets
                self.puts l
            end
        end
       
        while line = self.gets
            $stdout.puts line
        end

        return thr
    end
end
