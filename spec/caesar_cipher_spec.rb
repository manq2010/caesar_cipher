require 'spec_helper'
require_relative '../Exercise/caesar_cipher'

RSpec.describe 'CaesarCipher' do

  describe 'caesar_cipher_exercise' do

    it 'works with small positive shift' do
      expect(caesar_cipher('Zz', 5)).to eq('Ee')
    end

    it 'works with small negative shift' do
      expect(caesar_cipher('Ee', -5)).to eq('Zz')
    end

    it 'works with large positive shift' do
      expect(caesar_cipher('Zz', 83)).to eq('Ee')
    end

    it 'works with large negative shift' do
      expect(caesar_cipher('Ee', -83)).to eq('Zz')
    end

    it 'works with a phrase with punctuation' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end

    it 'works with a phrase with a large shift' do
      expect(caesar_cipher('Hello, World!', 75)).to eq('Ebiil, Tloia!')
    end

    it 'works with a phrase with a large negative shift' do
      expect(caesar_cipher('Hello, World!', -55)).to eq('Ebiil, Tloia!')
    end
  end
end
