require 'spec_helper'

describe Date, 'next_wday' do

  context 'just a monday' do
    
    subject { Date.new(2013, 9, 30) }

    it 'next monday' do
      subject.next_wday(1).should eq Date.new(2013, 10, 7)
    end

    it 'next tuesday' do
      subject.next_wday(2).should eq Date.new(2013, 10, 1)
    end

    it 'next wednesday' do
      subject.next_wday(3).should eq Date.new(2013, 10, 2)
    end

    it 'next sunday' do
      subject.next_wday(0).should eq Date.new(2013, 10, 6)
    end
  end

  context 'just a tuesday' do

    subject { Date.new(2013, 3, 12) }

    it 'next monday' do
      subject.next_wday(1).should eq Date.new(2013, 3, 18)
    end

    it 'next tuesday' do
      subject.next_wday(2).should eq Date.new(2013, 3, 19)
    end

    it 'next wednesday' do
      subject.next_wday(3).should eq Date.new(2013, 3, 13)
    end

    it 'next sunday' do
      subject.next_wday(0).should eq Date.new(2013, 3, 17)
    end
  end

  context 'sunday cornercase' do

    subject { Date.new(2013, 1, 6) }

    it 'next monday' do
      subject.next_wday(1).should eq Date.new(2013, 1, 7)
    end

    it 'next tuesday' do
      subject.next_wday(2).should eq Date.new(2013, 1, 8)
    end

    it 'next wednesday' do
      subject.next_wday(3).should eq Date.new(2013, 1, 9)
    end

    it 'next sunday' do
      subject.next_wday(0).should eq Date.new(2013, 1, 13)
    end
  end
end

describe Date, 'prev_wday' do

  context 'just a monday' do

    subject { Date.new(2013, 9, 30) }

    it 'previous monday' do
      subject.prev_wday(1).should eq Date.new(2013, 9, 23)
    end

    it 'previous tuesday' do
      subject.prev_wday(2).should eq Date.new(2013, 9, 24)
    end

    it 'previous wednesday' do
      subject.prev_wday(3).should eq Date.new(2013, 9, 25)
    end

    it 'previous sunday' do
      subject.prev_wday(0).should eq Date.new(2013, 9, 29)
    end
  end

  context 'just a tuesday' do

    subject { Date.new(2013, 3, 12) }

    it 'previous monday' do
      subject.prev_wday(1).should eq Date.new(2013, 3, 11)
    end

    it 'previous tuesday' do
      subject.prev_wday(2).should eq Date.new(2013, 3, 5)
    end

    it 'previous wednesday' do
      subject.prev_wday(3).should eq Date.new(2013, 3, 6)
    end

    it 'previous sunday' do
      subject.prev_wday(0).should eq Date.new(2013, 3, 10)
    end
  end

  context 'sunday cornercase' do

    subject { Date.new(2013, 1, 6) }
    it 'previous monday' do
      subject.prev_wday(1).should eq Date.new(2012, 12, 31)
    end

    it 'previous tuesday' do
      subject.prev_wday(2).should eq Date.new(2013, 1, 1)
    end

    it 'previous wednesday' do
      subject.prev_wday(3).should eq Date.new(2013, 1, 2)
    end

    it 'previous sunday' do
      subject.prev_wday(0).should eq Date.new(2012, 12, 30)
    end
  end
end