describe 'Bar' do

  before do
    class << self
      include CDQ
    end
    cdq.setup
  end

  after do
    cdq.reset!
  end

  it 'should be a Bar entity' do
    Bar.entity_description.name.should == 'Bar'
  end
end
