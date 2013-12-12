require 'spec_helper'

describe Number do
  describe '.bin2dec' do
    it 'converts binary to decimal' do
      expect(Number.bin2dec('1101')).to eq(13)
      expect(Number.bin2dec('1111')).to eq(15)
    end
  end

  describe '.dec2bin' do
    it 'converts decimal to binary' do
      expect(Number.dec2bin(13)).to eq('1101')
    end
  end

  describe '.bin2hex' do
    it 'converts binary to hexadecimal' do
      expect(Number.bin2hex('11110000')).to eq('f0')
    end
  end

  describe '.hex2bin' do
    it 'converts hexadecimal to binary' do
      expect(Number.hex2bin('f0')).to eq('11110000')
    end
  end
end
