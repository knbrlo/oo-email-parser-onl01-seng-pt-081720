# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :parse

    def initialize(emails)
        @list_emails = emails
    end

    def parse
        @list_emails.split(/[\s,]/).reject { |value| value.empty? }.uniq
    end
end