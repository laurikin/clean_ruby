require 'spec_helper_lite'

needs 'models'
require 'expert_questioning'

describe ExpertQuestioning do

    it "initializes with a questioner and a question" do
        questioner = Object.new
        question = "what?"
        expect { described_class.new(questioner, question) }.to_not raise_error
    end

    it "errors without a questioner and question" do
        expect { described_class.new }.to raise_error( ArgumentError, %r{0 for 2})
    end

end
