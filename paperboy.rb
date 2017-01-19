class Paperboy

  def initialize(name)
    @name = name
    @earnings = 0
    @experience = 0
  end

  def quota
    50 + (@experience * 0.5).to_i
  end

  def earnings
    @earnings += 0.25 * @deliveries_this_trip
    if @deliveries_this_trip < quota
      @earnings -= 2
    elsif @deliveries_this_trip > quota
      @earnings += 0.5 * (@deliveries_this_trip - quota)
    end
  end

  def deliver(start_address, end_address)
      @deliveries_this_trip = 0
      if start_address < end_address
        @deliveries_this_trip += (end_address - start_address)
      elsif start_address == end_address
        @deliveries_this_trip += 1
      else
        @deliveries_this_trip += (start_address - end_address)
      end

      earnings

      @experience += @deliveries_this_trip

  end

  def report
    puts "Hi, I'm #{@name}! I've delivered #{@experience} papers and earned $#{@earnings}!"
  end

end
