require 'rails_helper'

RSpec.describe Agent, type: :model do
   context 'when creating agent ' do
    let(:company) {create:company}
    let(:agent) {create :agent,company:company}
    let(:agent1){build :agent,name:"",company:company}
    let(:agent2){build :agent,password:"qwert5",company:company}
    it 'should be the valid with all attributes' do
      expect(agent.valid?).to eq(true)
    end
  it 'Agent should have the name' do
    expect(agent1.valid?).to eq(false)
  end
   it 'agent should valid password one capital letter and one digit' do
       expect(agent2.valid?).to eq(false)
   end

    


   end
   describe Agent do
    it "should have the many properties" do
      t=Agent.reflect_on_association(:properties)
      expect(t.macro).to eq(:has_many)
    end
   end
    

   describe Agent do
    it "should belong to a company" do
      association=Agent.reflect_on_association(:company).macro
      expect(association).to be(:belongs_to)
    end
   end

end
