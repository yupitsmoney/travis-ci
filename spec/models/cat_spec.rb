require "rails_helper"

describe Cat do

  it "should allow initialization with a name and breed"  do
    cat = Cat.new("bob","siamese")

    expect(cat.name).to eq("bob")
    expect(cat.breed).to eq("siamese")
  end
end
