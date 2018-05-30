require 'rspec'
require './triangle'

describe Triangle do
  describe '#shape' do
    let(:edges) { [1, 1, 1] }
    subject { Triangle.shape edges }
    it { is_expected.to eq '不等辺三角形ですね！' }
  end
end
