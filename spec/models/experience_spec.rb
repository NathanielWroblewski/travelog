require 'spec_helper'

describe Experience, 'associations' do
  it { expect(subject).to belong_to(:state) }
end
