class String
    def hex_to_str
        case
        when (self  =~ /^[0-9A-F]+$/i && self.length%2 == 0)
            # no whitespaces
            return [self].pack('H*') 
        when (self  =~ /^[0-9A-F\s]+$/i && !self.split(/\s/).any?{|a|a.length>2} ) 
            # bytes divided by whitespaces
            return self.split(/\s/).map{|a| [a].pack('H*')}.join()
        else
            raise "string format is not supported\n>> #{self}"
        end
    end
end
