require_relative "./spec_helper.rb"
require_relative "../bank.rb"

describe Bank do
  let(:bank) { Bank.new('Test Driven Bank') }

  describe ".new" do
    it "creates a Bank object" do
      expect(bank).to_not eq nil
    end

    it "has a name" do
      expect(bank.name).to eq 'Test Driven Bank'
    end

    it "has no accounts" do
      expect(bank.accounts).to eq({})
    end
  end

  describe "#create_account" do
    it "creates an account" do
      bank.create_account('Blair', 200)
      expect(bank.accounts['Blair']).to eq 200
    end
  end

  describe "#deposit" do
    it "deposits an amount into the specified account" do
      bank.create_account('Wayne', 500)
      bank.deposit('Wayne', 501)
      expect(bank.accounts['Wayne']).to eq 1001
    end
  end

  describe "#balance" do
    it "returns the balance for the specified account" do
      bank.create_account('Craigsy', 1)
      expect(bank.balance('Craigsy')).to eq 1
    end
  end

  describe "#withdraw" do
    it "subtracts an amount from the specified account" do
      bank.create_account('Jonesy', 100)
      bank.withdraw('Jonesy', 1)
      expect(bank.balance('Jonesy')).to eq 99
    end

    it "ignores requests for withdrawals greater than the balance" do
      bank.create_account('Hamburglar', 1)
      bank.withdraw('Hamburglar', 1_000_000)
      expect(bank.balance('Hamburglar')).to eq 1
    end
  end
end
