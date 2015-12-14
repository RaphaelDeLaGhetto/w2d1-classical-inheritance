require 'animals'

describe Chimpanzee do
  describe '#initialise' do
    it "sets the number of legs to 2" do
      chimp = Chimpanzee.new
      expect(chimp.num_legs).to eq(2)
    end
  end

  describe '#warm_blooded?' do
    it "returns true" do
      chimp = Chimpanzee.new
      expect(chimp.warm_blooded?).to eq(true)
    end
  end
end

describe Parrot do
  describe '#fly' do
    it 'correctly identifies the flying animal' do
      parrot = Parrot.new
      expect { parrot.fly }.to output("I'm a parrot, I'm flying!\n").to_stdout
    end
  end
end

describe Bat do
  describe '#fly' do
    it 'correctly identifies the flying animal' do
      bat = Bat.new
      expect { bat.fly }.to output("I'm a bat, I'm flying!\n").to_stdout
    end
  end
end

describe Flight do
  describe '#fly' do

    let(:dummy_class) do
      class DummyClass
        include Flight
      end
    end

    it 'correctly identifies the class' do
      expect { dummy_class.new.fly }.to output("I'm a dummyclass, I'm flying!\n").to_stdout
    end
  end
end
