require 'rspec' 
require_relative '../model/foo'

describe 'Foo' do

	it 'should return foo when do_foo' do
		foo = Foo.new
		expect(foo.do_foo).to eq 'foo'
  end

	it 'should return gabi when do_gabi' do
		foo = Foo.new
		expect(foo.do_gabi).to eq 'gabi'
	end
end
