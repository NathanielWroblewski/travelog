desc 'Marks a set of states as visited'

task visit_states: :environment do
  visited_states = YAML.load(ENV['VISITED_STATES'])
  visited_states.each do |state_abbr|
    state = State.find_by(abbr: state_abbr)
    state.update_attributes(visited: true) unless state.visited?
  end
end
