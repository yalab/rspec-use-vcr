RSpec.describe Rspec::Use::Vcr do
  use_vcr
  describe 'http connect' do
    subject { Net::HTTP.get_response(URI('http://www.iana.org/domains/reserved')) }
    before { subject }
    it { expect(File.exist?('fixtures/vcr_cassettes/Rspec_Use_Vcrhttpconnect.yml')).to be_truthy }

  end
end
