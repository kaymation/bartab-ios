describe 'User' do

  before do
    class << self
      include CDQ
    end
    cdq.setup
  end

  after do
    cdq.reset!
  end

  it 'should be a User entity' do
    User.entity_description.name.should == 'User'
  end
end
