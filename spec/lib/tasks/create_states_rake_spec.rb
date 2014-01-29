require 'spec_helper'

describe 'create_states' do
  include_context 'rake'

  let(:states) {
    [ 'Michigan',
      'South Dakota',
      'Washington',
      'Wisconsin',
      'Arizona',
      'Illinois',
      'New Hampshire',
      'North Carolina',
      'Kansas',
      'Missouri',
      'Arkansas',
      'Nevada',
      'District of Columbia',
      'Idaho',
      'Nebraska',
      'Pennsylvania',
      'Hawaii',
      'Utah',
      'Vermont',
      'Delaware',
      'Rhode Island',
      'Oklahoma',
      'Louisiana',
      'Montana',
      'Tennessee',
      'Maryland',
      'Florida',
      'Virginia',
      'Minnesota',
      'New Jersey',
      'Ohio',
      'California',
      'North Dakota',
      'Maine',
      'Indiana',
      'Texas',
      'Oregon',
      'Wyoming',
      'Alabama',
      'Iowa',
      'Mississippi',
      'Kentucky',
      'New Mexico',
      'Georgia',
      'Colorado',
      'Massachusetts',
      'Connecticut',
      'New York',
      'South Carolina',
      'Alaska',
      'West Virginia'
    ]
  }

  it 'creates all fifty states' do
    rake

    expect(State.count).to eq 51
    expect(State.pluck(:name)).to eq states
  end
end
