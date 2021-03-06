# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  
  attr_reader :emails
  
  def initialize(emails_string)
    @emails=emails_string
  end
  
  def parse
    parsed = []
    parsed = @emails.scan(/\w*@\w+\.\w+/i)
    parsed.uniq
  end
  
end