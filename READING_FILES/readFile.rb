require "stringio"

class Textline
    attr_accessor :words, :Ignored
    def initialize(aTextLine, blackList={})
        puts aTextLine
        @Ignored = blackList
        @words = {}
        @textline = aTextLine
        self.registerWords()
    end  

 
private     
    def registerWords
            @textline.to_s.split() do |word|
                if @Ignored[word.downcase].nil? then  
                    @words[word].nil? ? @words[word]=1 : @words[word]+=1
                end
                end 
        end  
end    



myBlackList = {"the" => true, "a" => true , "an" => true}
File.foreach("TheCommunistManifesto.txt","r",sep : "\n") do |line|
    myLine = Textline.new(line)
    puts myLine.words
    puts ("Do you want to do more lines? Y|N")
    if gets().chomp == "N" 
        then break
    end     
end 

   