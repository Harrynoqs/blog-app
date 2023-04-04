require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new(text: 'My comment', author_id: 9) }

  before { subject.save }

  it 'The comment should not be blank' do
    subject.text.nil?
    expect(subject).to_not be_valid
  end

  it 'The author_id should be an integer' do
    subject.author_id = '15'
    expect(subject).to_not be_valid
  end
end