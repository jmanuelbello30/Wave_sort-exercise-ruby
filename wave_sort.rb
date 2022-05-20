def wave_sort(arr)
    array_numbers_high = []
    array_numbers_low = []
    array_result = []
    
    sort_array = arr.sort { |a, b| b <=> a }
    
    count_half = sort_array.size / 2
    
    unless count_half.is_a?(Integer)
        count_half = count_half.to_i + 1
    end

    
    sort_array.each_with_index do |number, index|
        if index <= count_half-1
            array_numbers_high << number
        else
            array_numbers_low << number
        end
    end
    
    array_numbers_low = array_numbers_low.sort { |a, b| a <=> b }
    
    if array_numbers_high.size > array_numbers_low.size
        array_numbers_high.each_with_index do |element, index|
            array_result << element  
            next if array_numbers_high[index]==nil
            array_result << array_numbers_low[index]
        end
    else
        array_numbers_low.each_with_index do |element, index|
            array_result << array_numbers_high[index] unless array_numbers_high[index]==nil
            array_result << element 
        end  
    
    end

    return array_result
end

wave_sort([1, 2, 6, 19, 12, 3, 1])
