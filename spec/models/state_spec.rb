require 'spec_helper'

describe State, 'associations' do
  it { expect(subject).to have_many(:experiences) }
end

describe State, '.visited' do
  it 'returns all visited states' do
    visited   = create(:state, visited: true)
    unvisited = create(:state, visited: false)

    visited_states = State.visited

    expect(visited_states).to include visited
    expect(visited_states).to_not include unvisited
  end
end
