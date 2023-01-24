class GrammarStats
  def initialize
    @passed_texts = 0
    @total_texts = 0
    @percentage = 1
  end

  def check(text) # text is a string
    while !text.empty? do
      @total_texts = @total_texts + 1
      @text = text
      @text.split(" ")
      if @text[0] == @text[0].upcase && (@text[-1] == "." || @text[-1] == "?" || @text[-1] == "!")
        @passed_texts += 1
        return true
      else 
       return false
      end
    end
  end

  def percentage_good
  @percentage = (@passed_texts.to_f/@total_texts)*100
  result = "#{@percentage.to_i}" + "%"
  return result
  end
end

grammar_stats = GrammarStats.new
grammar_stats.check("bits are designed to train specific skills or tools.")
grammar_stats.check("Exercises designed to help you learn how")
grammar_stats.check("As an integer the percentage of texts checked so far that passed.")
grammar_stats.percentage_good