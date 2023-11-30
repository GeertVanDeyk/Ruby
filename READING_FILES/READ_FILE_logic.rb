
#small files can be read like this :
myFile = File.open("./SampleFile1.txt","r")
myFileData = myFile.read
myFile.close

(myFileData.split).each do |line|
    puts line
end
##################################################
#or like this :

myFile = File.open("./SampleFile1.txt","r")
myFileData = myFile.readlines.map(&:chomp) # this takes care of the new lines 
myFile.close

puts myFileData
##################################################
counter = 0
File.foreach("./SampleFile1.txt",mode:"r",) do |line|
    puts "Line" + (counter +=1).to_s + ": " + line
end       