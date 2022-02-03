# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '13.99', date_released: '2022-01-01')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without date' do
    subject.date_released = nil
    expect(subject).not_to be_valid
  end

end