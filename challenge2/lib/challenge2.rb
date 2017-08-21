class Challenge2
  def self.sum_to_0(_array)
    results = []

    _array.each_with_index do |first, first_index|
      _array.each_with_index do |second, second_index|
        if second_index <= first_index
          next
        else
          _array.each_with_index do |third, third_index|
            if third_index <= second_index
              next
            else
              if first + second + third == 0
                results << [first, second, third]
              end # array push loop end
            end # third loop end
          end # second if end
        end # second loop end
      end # first if end
    end # first loop end
    results
  end # method end
end # class end
