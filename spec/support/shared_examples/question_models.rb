RSpec.shared_examples "a question model" do |_parameter|
  it "responds with text to .show_answer" do
    expect(question.show_answer).to be_kind_of(String)
  end

  it "responds with text to .show_answer_in_email" do
    expect(question.show_answer_in_email).to be_kind_of(String)
  end

  it "responds serializable_hash with a hash" do
    expect(question.serializable_hash).to be_kind_of(Hash)
  end

  it "responds to valid?" do
    expect(question.valid?).to be(true).or be(false)
  end

  it "responds to is_optional?" do
    expect(question.is_optional?).to be(true).or be(false)
  end

  it "responds to has_long_answer?" do
    expect(question.has_long_answer?).to be(true).or be(false)
  end
end
