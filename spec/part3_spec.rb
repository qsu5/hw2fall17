require 'part3.rb'

describe "dessert" do
  it "should define a constructor" do
#    lambda { Dessert.new('a', 1) }.should_not raise_error
    expect(lambda {Dessert.new('a', 1)}).not_to raise_error
  end
 [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      Dessert.new('a',1).should respond_to method
      expect(Dessert.new('a',1)).to respond_to(method)
    end
  end
end

describe "jellybean" do
  it "should define a constructor" do
#    lambda { JellyBean.new('a', 1, 2) }.should_not raise_error
    expect(lambda { JellyBean.new('a', 1, 2) }).not_to raise_error
  end
    [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      JellyBean.new('a',1, 2).should respond_to method 
      expect(JellyBean.new('a',1, 2)).to respond_to(method) 
    end
  end
end


describe "dessert" do
  it "should be defined" do
    expect { Dessert }.not_to raise_error
  end

  describe 'getters and setters' do
    before(:each)  { @desert = Dessert.new('isbn1', 33.8) }
    it 'should set ISBN [10 points]' , points: 10 do
      expect(@desert.name).to eq('isbn1')
    end
    it 'should set price [10 points]' , points: 10 do
      expect(@desert.calories).to eq(33.8)
    end
    it 'should be able to change ISBN [10 points]' , points: 10 do
      @desert.name = 'isbn2'
      expect(@desert.name).to eq('isbn2')
    end
    it 'should be able to change price [10 points]' , points: 10 do
      @desert.calories = 300.0
      expect(@desert.calories).to eq(300.0)
    end
  end
  end

    describe "#price_as_string" do
        it "should be defined" do
          expect(Dessert.new('isbn1', 10)).to respond_to(:healthy?)
        end
        it 'should display 33.95 as "$33.95" [10 points]' , points: 10 do
          expect(Dessert.new('isbn11', 33.95).healthy?).to eq(TRUE)
        end
        it "should display 1.1 as $1.10 [10 points]" , points: 10 do
          expect(Dessert.new('isbn11', 200).healthy?).to eq(FALSE)
        end
        it "should display 20 as $20.00 [10 points]" , points: 10 do
          expect(Dessert.new('isbn11', 201).healthy?).to eq(FALSE)
        end
    
  
    describe "#delicious?" do
        it "should be defined" do
          expect(Dessert.new('isbn1', 10)).to respond_to(:delicious?)
        end
        it 'should display 33.95 as "$33.95" [10 points]' , points: 10 do
          expect(Dessert.new('isbn11', 33.95).delicious?).to eq(TRUE)
        end
    end
end




describe "JellyBean" do
  it "should be defined" do
    expect { JellyBean }.not_to raise_error
  end

  describe 'getters and setters' do
    before(:each)  { @bean = JellyBean.new('isbn1', 33.8, "haha") }
    it 'should set ISBN [10 points]' , points: 10 do
      expect(@bean.name).to eq('isbn1')
    end
    it 'should set price [10 points]' , points: 10 do
      expect(@bean.calories).to eq(33.8)
    end
    it 'should set price [10 points]' , points: 10 do
      expect(@bean.flavor).to eq('haha')
    end
    
    it 'should be able to change ISBN [10 points]' , points: 10 do
      @bean.name = 'isbn2'
      expect(@bean.name).to eq('isbn2')
    end
    it 'should be able to change price [10 points]' , points: 10 do
      @bean.calories = 300.0
      expect(@bean.calories).to eq(300.0)
    end
    it 'should be able to change price [10 points]' , points: 10 do
      @bean.flavor = "bad"
      expect(@bean.flavor).to eq("bad")
  end

  describe "#delicious?" do
    it "should be defined" do
      expect(JellyBean.new('isbn1', 10,"red")).to respond_to(:delicious?)
    end
    it 'should display 33.95 as "$33.95" [10 points]' , points: 10 do
      expect(JellyBean.new('isbn11', 33.95,"red").delicious?).to eq(TRUE)
    end
    it "should display 1.1 as $1.10 [10 points]" , points: 10 do
      expect(JellyBean.new('isbn11', 1.1,"black licorice").delicious?).to eq(FALSE)
    end
    it "should display 20 as $20.00 [10 points]" , points: 10 do
      expect(JellyBean.new('isbn11', 20,"haha").delicious?).to eq(TRUE)
    end
    end
    
    
    describe "#healthy?" do
        it "should be defined" do
          expect(JellyBean.new('isbn1', 10,"red")).to respond_to(:healthy?)
        end
        it 'should display 33.95 as "$33.95" [10 points]' , points: 10 do
          expect(JellyBean.new('isbn11', 33.95,"red").healthy?).to eq(TRUE)
        end
        it "should display 1.1 as $1.10 [10 points]" , points: 10 do
          expect(JellyBean.new('isbn11', 1.1,"black licorice").healthy?).to eq(TRUE)
        end
        it "should display 20 as $20.00 [10 points]" , points: 10 do
          expect(JellyBean.new('isbn11', 200,"haha").healthy?).to eq(FALSE)
        end
    end
  end
end