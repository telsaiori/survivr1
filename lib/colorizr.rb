class String

  @colors = {red: 31, green: 32, yellow: 33, blue: 34, pink: 35, light_blue: 94, white: 97, light_grey: 37, black: 30}
  def self.colors
    @colors.keys
  end
  
  def self.sample_colors
    @colors.each do |key, value|
    puts "This is \e[#{value}m#{key}\e[0m"
    end
  end
  
  def self.create_colors
    @colors.each do |key, value|
      self.send(:define_method, "#{key}") do
        "\e[#{value}m#{key}\e[0m"
      end
    end
        
  end
  
  String.create_colors
end

#red green yellow blue pink light_bluewhite light_grey black
