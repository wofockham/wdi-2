require_relative "./spec_helper.rb"
require_relative "../bank.rb"

describe Bank do
  describe ".new" do
    it "creates a Bank object" do
      bank = Bank.new('Test Driven Bank')
      expect(bank).to_not eq nil
    end

    it "has a name" do
      name = 'Test Driven Bunk'
      bank = Bank.new(name)
      expect(bank.name).to eq name
    end
  end

  describe "#create_account" do
    it "creates an account" do
      bank = Bank.new('Test Driven Bank')
      bank.create_account('Blair', 200)
      expect(bank.accounts['Blair']).to eq 200
    end
  end
end
