require 'spec_helper'

describe Trove::Client do
  it "exists" do
    Trove::Client.new.should_not be_nil
  end
end

__END__

require 'trove'
client = Trove::Client.new
success = client.auth(app_key, app_secret)

photos = client.get_photos if success

client.get_photos(
  :between => (3.days.ago..Time.now),
  :tagged => ['Williamsburg', 'snow'],
  :services => :facebook, :flickr
)

client.get_photos(
  :from => 3.days.ago, :to => Time.now)
   // services => :all is the default
