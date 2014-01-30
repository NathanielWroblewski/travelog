require 'spec_helper'

describe 'visit_states' do
  include_context 'rake'

  it 'marks states as visited' do
    create(:state, abbr: 'CA', visited: false, name: 'California')
    ENV['VISITED_STATES'] = YAML.dump(['CA'])

    rake

    expect(State.find_by(abbr: 'CA')).to be_visited
  end
end
