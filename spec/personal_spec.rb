require 'personal'

describe Person do
  it 'returns the name' do
    person = Person.new 'Dora'
    expect(person.name).to eq 'Dora'
  end
end
