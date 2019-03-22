require "jarod_palindrome/version"

module JarodPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-zA-Z]/i).join.downcase
    end
end

class String
  include JarodPalindrome
end

class Integer
  include JarodPalindrome
end
