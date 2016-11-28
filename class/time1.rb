class Time1
    require 'time'
    attr_accessor :year, :birth_date, :seconds

    def hours_in_year
        365*24
    end

    # Credit to : http://stackoverflow.com/questions/4136248/how-to-generate-a-human-readable-time-range-using-ruby-on-rails
    # and modified a little bit
    def humanize secs
      [
        [60, :seconds],
        [60, :minutes],
        [24, :hours],
        [365, :days],
        [100, :years]
      ].map do |count, name|
        if secs > 0
          secs, n = secs.divmod(count)
          "#{n.to_i} #{name}"
        end
      end.compact.reverse.join(' ')
    end

    def exact_age
        loop do
            distance = Time.new - Time.parse(birth_date)
            print humanize(distance)+"\r"
            sleep 1
        end
    end

    def seconds_to_age
        years = (((seconds / 60)/60)/24)/365
        puts years
    end
end

# Small class test program:
roan = Time1.new
roan.birth_date = '1980-06-24'
roan.seconds = 1000000;

puts "The average year has #{roan.hours_in_year} hours"
puts "The seconds converted to years is: #{roan.seconds_to_age}"
roan.exact_age
