class Item 
    attr_accessor :archived
    attr_reader :pub_date

    def initialize( id, pub_date, archived: false) 
        @id = Random.rand(1..200)
        @gener = gener
        @author = author
        @source = source
        @label = label
        @pub_date = pub_date
        @archived = archived 
    end
end 