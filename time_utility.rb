  def average_time_of_day(values)
        total = 0
        values.each do |num|
                total += num
        end
        avg = total / values.length
  end
#puts average of any array of numbers

#puts average_time_of_day([10,20,30])



  def turn_time_to_minutes(times)
      new_times = times.collect do |time| 
                time.split(":")
        end
        
        num = []
        new_times.each do |array|
                num << ((array[0].to_i * 60) + array[1].to_i)  
        end
        num
        
  end
#turns time into a nested array by splitting each
#time by ":" Multiples hour by 60 (array[0])
#and then adds minue
  def convert_to_time(variable)

        remainder = variable/60.to_f
        hours = remainder.to_i
        minutes = remainder % 1 * 60
        minutes = minutes.to_i
        puts "#{hours}:#{minutes}"

        
  end
# a = [1,2,3]
# container = []
# a.each do |element|
#         container << element * element
# end
# container
 final_challenge = turn_time_to_minutes(["6:41","7:01","6:51"])
 
exact_time =average_time_of_day(final_challenge)
puts convert_to_time(exact_time)