desc 'Seed database with state info'

task create_states: :environment do
  State.create([
    { name: 'Michigan', abbr: 'MI'},
    { name: 'South Dakota', abbr: 'SD'},
    { name: 'Washington', abbr: 'WA'},
    { name: 'Wisconsin', abbr: 'WI'},
    { name: 'Arizona', abbr: 'AZ'},
    { name: 'Illinois', abbr: 'IL'},
    { name: 'New Hampshire', abbr: 'NH'},
    { name: 'North Carolina', abbr: 'NC'},
    { name: 'Kansas', abbr: 'KS'},
    { name: 'Missouri', abbr: 'MO'},
    { name: 'Arkansas', abbr: 'AR'},
    { name: 'Nevada', abbr: 'NV'},
    { name: 'District of Columbia', abbr: 'DC'},
    { name: 'Idaho', abbr: 'ID'},
    { name: 'Nebraska', abbr: 'NE'},
    { name: 'Pennsylvania', abbr: 'PA'},
    { name: 'Hawaii', abbr: 'HI'},
    { name: 'Utah', abbr: 'UT'},
    { name: 'Vermont', abbr: 'VT'},
    { name: 'Delaware', abbr: 'DE'},
    { name: 'Rhode Island', abbr: 'RI'},
    { name: 'Oklahoma', abbr: 'OK'},
    { name: 'Louisiana', abbr: 'LA'},
    { name: 'Montana', abbr: 'MT'},
    { name: 'Tennessee', abbr: 'TN'},
    { name: 'Maryland', abbr: 'MD'},
    { name: 'Florida', abbr: 'FL'},
    { name: 'Virginia', abbr: 'VA'},
    { name: 'Minnesota', abbr: 'MN'},
    { name: 'New Jersey', abbr: 'NJ'},
    { name: 'Ohio', abbr: 'OH'},
    { name: 'California', abbr: 'CA'},
    { name: 'North Dakota', abbr: 'ND'},
    { name: 'Maine', abbr: 'ME'},
    { name: 'Indiana', abbr: 'IN'},
    { name: 'Texas', abbr: 'TX'},
    { name: 'Oregon', abbr: 'OR'},
    { name: 'Wyoming', abbr: 'WY'},
    { name: 'Alabama', abbr: 'AL'},
    { name: 'Iowa', abbr: 'IA'},
    { name: 'Mississippi', abbr: 'MS'},
    { name: 'Kentucky', abbr: 'KY'},
    { name: 'New Mexico', abbr: 'NM'},
    { name: 'Georgia', abbr: 'GA'},
    { name: 'Colorado', abbr: 'CO'},
    { name: 'Massachusetts', abbr: 'MA'},
    { name: 'Connecticut', abbr: 'CT'},
    { name: 'New York', abbr: 'NY'},
    { name: 'South Carolina', abbr: 'SC'},
    { name: 'Alaska', abbr: 'AK'},
    { name: 'West Virginia', abbr: 'WV'}
  ])
end
