# location: spec/unit/unit_spec.rb
require 'rails_helper'
#
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk', date: Date.parse('January 1, 2021'), price: 3.5)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end


  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end
