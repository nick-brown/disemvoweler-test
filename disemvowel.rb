class Disemvoweler
    attr_reader :cleaned

    def initialize strs
        @strs = strs
        @cleaned = []

        self.process
    end

    def process 
        @strs.each { |x| @cleaned << [x.delete('aeiou '), x.delete('^aeiou')] }
    end
end


inputs = [
   'all those who believe in psychokinesis raise my hand',
   'did you hear about the excellent farmer who was outstanding in his field'
]

p Disemvoweler.new(inputs).cleaned

