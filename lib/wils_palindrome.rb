require "wils_palindrome/version"

class String 

  #Returns true for a palindrome, false otherwise
  def palindrome?
    if processed_content.empty?
      return false 
    end
    processed_content == processed_content.reverse
  end

  private
    #Returns content for palindrome testing
    def processed_content
      self.scan(/[a-z]/i).join("").downcase
    end
end