module ApplicationHelper
  def snake_case some_text
    some_text.underscore.tr(' ','_')
  end

  def zero_adder number
    number_length = number.to_s.length
    case number_length
    when 1
      '00' + number.to_s
    when 2
      '0' + number.to_s
    else
      number.to_s
    end
  end
end
