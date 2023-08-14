require 'date'
class Item 
    attr_accessor :archived
    attr_reader :pub_date

    def initialize( id, pub_date, archived: false) 
        @id = Random.rand(1..200)
        begin
            @pub_date = Date.strptime(pub_date, '%Y-%m-%d')
        rescue ArgumentError
            puts "Invalid date format. Please use the format YYYY-MM-DD."
            exit
        end
        @archived = archived 
    end

    def gener=(gener) 
        @gener = gener
    end 

    def author=(author) 
        @author = author
    end

    def source=(source) 
        @source = source
    end 

    def label=(label) 
        @label = label
    end

    def can_be_archived?
        @since_pub_date =   years_passed = (Date.today - @pub_date)
        if years_passed >= 10
            return true
        else
            return false
        end
    end 

    def move_to_archive 
        if can_be_archived? 
            @archived = true
        end
    end
end 