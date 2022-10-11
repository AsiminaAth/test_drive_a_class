require 'challenge'

RSpec.describe GrammarStats do
    it "returns true if first char is capital & lat punctuation mark" do
        grammar_stats = GrammarStats.new
        text = "Hi there."
        report = grammar_stats.check(text)
        expect(report).to eq true
    end
end