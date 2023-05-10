require 'present'

RSpec.describe Present do
  it "wraps and unwraps contents" do
    present = Present.new
    present.wrap(3)
    expect(present.unwrap).to eq 3
  end

  it "fails if already wrapped when trying to wrap" do
    present = Present.new
    present.wrap(3)
    expect { present.wrap(4) }.to raise_error "A content has already been wrapped."
  end 

  it "fails if it has not been wrapped when unwrapping." do
    present = Present.new
    expect { present.unwrap() }.to raise_error "No contents have been wrapped."
  end
end 