# frozen_string_literal: true

require_relative '../lib/feat'

RSpec.describe('Feat') do
  let(:feat1) { Aretha::Feat.new('Test Text', 'http://localhost/test/url', 'Test Citation') }
  let(:feat2) { Aretha::Feat.new('Test Text', 'http://localhost/test/url', 'Test Citation', superscripts: 'Test') }
  let(:feat3) { Aretha::Feat.net('Test Text', 'http://localhost/test/uri', 'Test Citation', is_limit: true) } 

  it 'can be constructed with text, a url and a citation' do
    expect(feat1).to be_truthy
  end

  it 'can be constructed with text, a url, a citation and a superscript' do
    expect(feat2).to be_truthy
  end

  it 'can be constructed with text, a url, a citation and limit set to true' do
    expect(feat3).to be_truthy
  end
  
  it 'has no superscript if the feat was constructed without a superscript' do
    expect(feat1.to_markdown).to eql('[Test Text](http://localhost/test/url "Test Citation")')
  end

  it 'has a superscript if the feat was constructed with a superscript' do
    expect(feat2.to_markdown).to eql('[Test Text](http://localhost/test/url "Test Citation")^Test')
  end
end
