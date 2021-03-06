require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../spec_helper'

ruby_version_is "1.8.7" do
  describe "Integer#ord" do
    it "returns self" do
      20.ord.should eql(20)
      40.ord.should eql(40)
      
      0.ord.should eql(0)
      (-10).ord.should eql(-10)
      
      ?a.ord.should eql(97)
      ?Z.ord.should eql(90)
      
      bignum_value.ord.should eql(bignum_value)
      (-bignum_value).ord.should eql(-bignum_value)
    end
  end
end
