require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../spec_helper'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/fixtures/classes'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/shared/iteration'

describe "Hash#each_value" do
  it "calls block once for each key, passing value" do
    r = []
    h = new_hash(:a => -5, :b => -3, :c => -2, :d => -1, :e => -1)
    h.each_value { |v| r << v }.should equal(h)
    r.sort.should == [-5, -3, -2, -1, -1]
  end

  it "processes values in the same order as values()" do
    values = []
    h = new_hash(:a => -5, :b => -3, :c => -2, :d => -1, :e => -1)
    h.each_value { |v| values << v }
    values.should == h.values
  end

  it_behaves_like(:hash_iteration_no_block, :each_value)
end
