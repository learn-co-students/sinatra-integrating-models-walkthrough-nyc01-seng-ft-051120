class TextAnalyzer
attr_reader :text, :mst_ct

    def initialize(text)
    @text=text.downcase
    @mst_ct=0
    end

    def word_count
    text.split(" ").count
    end

    def vowel_count
        count=0
        vowels=['a', 'e', 'o', 'i', 'u']
        text.split('').each{ |ch| 
        if  vowels.include?(ch)
        count+=1
        end
        }
        count
    end
     def count_of_consonants
         text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
     end

     def most_used_letter
        s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
        arr = s1.split('')
        arr1 = arr.uniq
        arr2 = {}
    
        arr1.map do |c|
          arr2[c] =  arr.count(c)
        end
    
        biggest = { arr2.keys.first => arr2.values.first }
    
        arr2.each do |key, value|
          if value > biggest.values.first
            biggest = {}
            biggest[key] = value
          end
        end
    end

    def most_used_word

        count=0
        word=""
        text.split.uniq.each do |word1|
            c=0
                text.split.each do |word2|
                    
                    if word1 == word2
                        c +=1 
                    end
                end
            if count<c
                count=c
                word=word1
            end
                
           
        end
        most={"count"=> count, "word"=> word}
    end





end
