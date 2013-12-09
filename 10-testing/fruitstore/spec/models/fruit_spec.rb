# == Schema Information
#
# Table name: fruits
#
#  id                :integer          not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  name              :string(255)
#  type              :string(255)
#  stair_id          :integer
#  country_of_origin :string(255)
#  color             :string(255)
#  age               :string(255)
#  description       :text
#

require 'spec_helper'

describe Fruit do

  it { should belong_to :stair }

  describe "An apple" do
    before do
      @apple = Apple.create(:name => 'granny smith apple')
    end

    it "should not be squishy" do
      @apple.squishy?.should == false
      @apple.squishy?.should be_false
      @apple.squishy?.should eq false
    end

    it "should remember what class it is using single table inheritance (STI)" do
      apple = Fruit.find @apple.id
      apple.should_not be_nil

      apple.class.should == Apple
      apple.instance_of?(Apple).should be_true
      apple.kind_of?(Fruit).should be_true
      apple.is_a?(Fruit).should be_true
      apple.class.ancestors.should include Fruit
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.create(:name => 'nashi pear')
    end

    it "should be kind of squishy" do
      @pear.squishy?.should == true
      @pear.squishy?.should be_true
      @pear.squishy?.should eq true
    end

    it "should remember what class it is using single table inheritance (STI)" do
      pear = Fruit.find @pear.id
      pear.should_not be_nil

      pear.class.should == Pear
      pear.instance_of?(Pear).should be_true
      pear.kind_of?(Fruit).should be_true
      pear.is_a?(Fruit).should be_true
      pear.class.ancestors.should include Fruit
    end
  end
end
