require 'exercise'

RSpec.describe 'DiaryEntry' do
    it "constructs" do
        diary_entry = DiaryEntry.new("My title", "My contents")
        expect(diary_entry.title).to eq ("My title")
        expect(diary_entry.contents).to eq ("My contents")
    end

    it "returns the number of the contents' words" do
        diary_entry = DiaryEntry.new("My title", "This is my contents")
        number_of_words = diary_entry.count_words
        expect(number_of_words).to eq 4
    end

    it "returns 0 when there is no contents" do
        diary_entry = DiaryEntry.new("My title", "")
        number_of_words = diary_entry.count_words
        expect(number_of_words).to eq 0
    end

    it "returns the time of reading the contents" do
        diary_entry = DiaryEntry.new("My title", "contents " * 550)
        expect(diary_entry.reading_time(200)).to eq 3
    end

    it "fails if given wpm = 0" do
        diary_entry = DiaryEntry.new("My title", "contents")
        expect{diary_entry.reading_time(0)}.to raise_error "Reading time cannot be 0"
    end

    it "returns all of the contents" do
        diary_entry = DiaryEntry.new("My title", "This is my contents")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "This is my contents"
    end

    it "returns a readable chunk" do
        diary_entry = DiaryEntry.new("My title", "This is my contents")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "This is"
    end
end